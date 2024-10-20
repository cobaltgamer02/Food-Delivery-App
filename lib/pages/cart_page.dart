import "package:flutter/material.dart";
import "package:foodel/components/my_btn.dart";
import "package:foodel/components/my_cart_tile.dart";
import "package:foodel/models/restaurant.dart";
import "package:foodel/pages/payment_page.dart";
import "package:provider/provider.dart";

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;

        //return scaffold ui
        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear cart button
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Center(
                          child:
                              Text("are you sure you want to clear the cart?"),
                        ),
                        actions: [
                          //yes
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                restaurant.clearCart();
                              },
                              child: const Text("Yes")),
                          //cancel
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Cancel")),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete))
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    //list of cart
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(child: Text("The Cart is empty 😥")))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  //get individual cart ite,
                                  final cartItem = userCart[index];

                                  //return cart tile ui
                                  return MyCartTile(cartItem: cartItem);
                                }),
                          )
                  ],
                ),
              ),
              //payment button
              MyButton(
                text: "Go to checkout",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        );
      },
    );
  }
}
