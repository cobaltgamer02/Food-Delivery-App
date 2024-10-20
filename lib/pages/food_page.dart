import "package:flutter/material.dart";
import "package:foodel/components/my_btn.dart";
import "package:foodel/main.dart";
import "package:foodel/models/food.dart";
import "package:foodel/models/restaurant.dart";
import "package:provider/provider.dart";

class FoodPage extends StatefulWidget {

  final Food food;
  final Map<Addons, bool> selectedAddons = {};

  FoodPage({super.key, required this.food}) {
    //initialize the selected addons to be false
    for (Addons addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

//method to add to cart
void  addtoCart(Food food, Map<Addons, bool> selectedAddons) {
  
  //close the current food page and go back to menu
  Navigator.pop(context);

  //format the selected addons
  List<Addons> currentlySelectedAddons = [];
  for(Addons addon in widget.food.availableAddons){
    if(widget.selectedAddons[addon] == true){
      currentlySelectedAddons.add(addon);
    }
  }
  context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
}


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //scaffold ui
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //image
                Image.asset(widget.food.imagePath),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //name
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      //price
                      Text(
                        '\$${widget.food.price}',
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //description
                      Text(
                        widget.food.description,
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //addons
                      Text(
                        "Add-ons",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.food.availableAddons.length,
                            itemBuilder: (context, index) {
                              //get individual addons
                              Addons addon = widget.food.availableAddons[index];

                              //return checkbox tile UI
                              return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text(
                                  addon.price.toString(),
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                                value: widget.selectedAddons[addon],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddons[addon] = value!;
                                  });
                                },
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                //button -> add to cart
                MyButton(text: "Add to cart", onTap: () => addtoCart(widget.food, widget.selectedAddons)),

                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
        //back button
        SafeArea(
          child: Opacity(
            opacity: 0.7,
            child: Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.secondary, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios_new),
              ),
              margin: EdgeInsets.only(left: 25),
            ),
          ),
        ),
      ],
    );
  }
  
  
}
