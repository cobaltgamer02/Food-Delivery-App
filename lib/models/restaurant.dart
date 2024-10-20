import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:foodel/models/cart_item.dart';
import 'package:foodel/models/food.dart';

class Restaurant extends ChangeNotifier { 
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Crispy Cluck Deluxe",
      description:
          "A tender, golden-fried chicken breast, seasoned to perfection, topped with fresh lettuce, tomatoes, and a creamy aioli.",
      imagePath: "lib/images/burger/classic.jpg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: "Extra Cheese", price: 0.99),
        Addons(name: "Bacon", price: 1.99),
        Addons(name: "Avacado", price: 2.99),
      ],
    ),

    Food(
      name: "Cheddar Melt Tower",
      description:
          "Two juicy beef patties layered with a generous amount of melted cheddar cheese, crispy bacon, pickles, and a tangy sauce.",
      imagePath: "lib/images/burger/doubleCheese.jpg",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: "Extra Cheese", price: 0.99),
        Addons(name: "Bacon", price: 1.99),
        Addons(name: "Avacado", price: 2.99),
      ],
    ),

    Food(
      name: "The Beast",
      description:
          "An indulgent stuffy patty burger stacked with cheddar, crispy onion rings, lettuce, tomatoes, and our signature smoky BBQ sauce. Dare to finish it?",
      imagePath: "lib/images/burger/monsterBurg.jpg",
      price: 14.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: "Extra Cheese", price: 0.99),
        Addons(name: "Bacon", price: 1.99),
        Addons(name: "Avacado", price: 2.99),
      ],
    ),

    Food(
      name: "Shepherd’s Choice",
      description:
          "A hearty lamb patty seasoned with rosemary and garlic, paired with creamy feta, lettuce, and tzatziki sauce.",
      imagePath: "lib/images/burger/shepardBurg.jpg",
      price: 11.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: "Extra Cheese", price: 0.99),
        Addons(name: "Bacon", price: 1.99),
        Addons(name: "Avacado", price: 2.99),
      ],
    ),

    Food(
      name: "Protein Powerhouse",
      description:
          "A grilled turkey patty, avocado, mixed greens, and a spicy hummus spread, served on a whole-grain bun for the ultimate fitness fuel.",
      imagePath: "lib/images/burger/workoutBurg.jpg",
      price: 12.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: "Extra Cheese", price: 0.99),
        Addons(name: "Bacon", price: 1.99),
        Addons(name: "Avacado", price: 2.99),
      ],
    ),

    //salads
    Food(
      name: "Caesar Elegance",
      description:
          "Crisp romaine lettuce tossed in creamy Caesar dressing, topped with shaved parmesan, crunchy croutons, and a drizzle of olive oil.",
      imagePath: "lib/images/salads/ceasar.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: "Cheese", price: 0.99),
        Addons(name: "Chicken", price: 1.49),
        Addons(name: "Bread", price: 2.99),
      ],
    ),

    Food(
      name: "Garden Fresh Harmony",
      description:
          "A vibrant mix of fresh greens, cucumbers, cherry tomatoes, and radishes, served with a light vinaigrette.",
      imagePath: "lib/images/salads/green.jpg",
      price: 6.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: "Cheese", price: 0.99),
        Addons(name: "Chicken", price: 1.49),
        Addons(name: "Bread", price: 2.99),
      ],
    ),

    Food(
      name: "Lamb & Greens",
      description:
          "Sliced grilled sirloin lamb on a bed of mixed greens, with roasted red peppers, feta, and a balsamic glaze.",
      imagePath: "lib/images/salads/signature.jpg",
      price: 12.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: "Feta", price: 1.49),
        Addons(name: "Bread", price: 2.99),
      ],
    ),

    //sides
    Food(
      name: "Golden Fried Rice",
      description:
          "Wok-fried jasmine rice with veggies, scrambled egg, and your choice of chicken, pork, or shrimp, seasoned with soy and sesame.",
      imagePath: "lib/images/sides/friedrice.jpg",
      price: 9.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: "Cheese", price: 0.99),
        Addons(name: "Chicken", price: 1.49),
        Addons(name: "Egg", price: 0.99),
      ],
    ),

    Food(
      name: "Crispy Fries",
      description:
          "Hand-cut, double-fried to perfection with a sprinkle of sea salt and served with your choice of dipping sauce.",
      imagePath: "lib/images/sides/fries.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: "Cheese", price: 0.99),
        Addons(name: "Chicken", price: 1.49),
      ],
    ),

    Food(
      name: "Crispy Pork",
      description:
          "Tender pork slices, breaded and fried to a crispy perfection, served with a zesty dipping sauce.",
      imagePath: "lib/images/sides/pork.jpg",
      price: 8.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: "Cheese", price: 0.99),
      ],
    ),

    Food(
      name: "Velvety Risotto",
      description:
          "Creamy and rich risotto cooked with a touch of butter, Parmesan cheese, and a sprinkle of fresh herbs.",
      imagePath: "lib/images/sides/rissoto.jpg",
      price: 11.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: "Cheese", price: 0.99),
        Addons(name: "Chicken", price: 1.49),
      ],
    ),

    //desserts
    Food(
      name: "Choco-Chip Cookies",
      description:
          "Soft-baked cookies packed with rich chocolate chips and a hint of vanilla. Perfectly gooey on the inside.",
      imagePath: "lib/images/desserts/chocoChip.jpg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addons(name: "Strawberry", price: 0.99),
        Addons(name: "Whipped Cream", price: 0.99),
        Addons(name: "Hot Fudge", price: 0.99),
        Addons(name: "Caramel", price: 1.99),
      ],
    ),

    Food(
      name: "Velvet Choco-Raspberry Tart",
      description:
          "A delicate tart shell filled with rich, velvety chocolate ganache and topped with fresh raspberries, drizzled with a sweet raspberry syrup for the perfect balance of sweet and tangy.",
      imagePath: "lib/images/desserts/chocoRasTart.jpg",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addons(name: "Strawberry", price: 0.99),
        Addons(name: "Whipped Cream", price: 0.99),
        Addons(name: "Hot Fudge", price: 0.99),
        Addons(name: "Caramel", price: 1.99),
      ],
    ),

    Food(
      name: "Morning Muffins",
      description:
          "Light, fluffy muffins with a golden-brown crust, available in blueberry, banana nut, or chocolate chip flavors.",
      imagePath: "lib/images/desserts/muffins.jpg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addons(name: "Strawberry", price: 0.99),
        Addons(name: "Whipped Cream", price: 0.99),
        Addons(name: "Hot Fudge", price: 0.99),
        Addons(name: "Caramel", price: 1.99),
      ],
    ),

    Food(
      name: "Raspberry Cheesecake",
      description:
          "Silky smooth cheesecake on a buttery graham cracker crust, topped with a fresh raspberry compote and a drizzle of raspberry syrup.",
      imagePath: "lib/images/desserts/raspCheese.jpg",
      price: 7.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addons(name: "Strawberry", price: 0.99),
        Addons(name: "Whipped Cream", price: 0.99),
        Addons(name: "Hot Fudge", price: 0.99),
        Addons(name: "Caramel", price: 1.99),
      ],
    ),

    Food(
      name: "Cinnamon Donuts",
      description:
          "Soft, melt-in-your-mouth donuts rolled in cinnamon sugar with a hint of vanilla glaze.",
      imagePath: "lib/images/desserts/sugarDonuts.jpg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addons(name: "Strawberry", price: 0.99),
        Addons(name: "Whipped Cream", price: 0.99),
        Addons(name: "Hot Fudge", price: 0.99),
        Addons(name: "Caramel", price: 1.99),
      ],
    ),

    //drinks
    Food(
      name: "Apricot Nectar",
      description:
          "A fragrant and fruity apricot wine, with floral notes and a crisp finish, perfect for sipping on a warm evening.",
      imagePath: "lib/images/drinks/apricot.jpg",
      price: 9.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: "Berries", price: 1.99),
        Addons(name: "Honey", price: 1.99),
        Addons(name: "Shot of Rum", price: 4.99),
        Addons(name: "Flavored Ice Cubes", price: 0.49),
      ],
    ),

    Food(
      name: "Blackberry Breeze Mojito",
      description:
          "A refreshing blend of fresh blackberries, mint, lime, rum, and soda, perfect for a tropical escape.",
      imagePath: "lib/images/drinks/blackberry.jpg",
      price: 7.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: "Berries", price: 1.99),
        Addons(name: "Honey", price: 1.99),
        Addons(name: "Shot of Rum", price: 4.99),
        Addons(name: "Flavored Ice Cubes", price: 0.49),
      ],
    ),

    Food(
      name: "Cherry Mint Fusion",
      description:
          "Freshly muddled cherries mixed with mint, lime, and rum, topped with soda for a sweet and tangy twist on the classic mojito.",
      imagePath: "lib/images/drinks/cherry.jpg",
      price: 7.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: "Berries", price: 1.99),
        Addons(name: "Honey", price: 1.99),
        Addons(name: "Shot of Rum", price: 4.99),
        Addons(name: "Flavored Ice Cubes", price: 0.49),
      ],
    ),

    Food(
      name: "Fresh Lemonade",
      description:
          "A refreshingly tart lemonade made with real lemons and a touch of sweetness, served ice-cold.",
      imagePath: "lib/images/drinks/lemon.jpg",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: "Berries", price: 1.99),
        Addons(name: "Honey", price: 1.99),
        Addons(name: "Shot of Rum", price: 4.99),
        Addons(name: "Flavored Ice Cubes", price: 0.49),
      ],
    ),

    Food(
      name: "Peach Iced Tea",
      description:
          "A refreshing iced tea infused with ripe peaches and a hint of honey. Perfect for a summer day.",
      imagePath: "lib/images/drinks/peach.jpg",
      price: 5.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: "Berries", price: 1.99),
        Addons(name: "Honey", price: 1.99),
        Addons(name: "Shot of Rum", price: 4.99),
        Addons(name: "Flavored Ice Cubes", price: 0.49),
      ],
    ),
  ];

//getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  //operations
  //create user cart
  final List<CartItem> _cart = [];
  //add to cart
  void addToCart(Food food, List<Addons> selectedAddons) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food are the same
      bool isSameFood = item.food == food;
      //check if the list of selected addonsare the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameAddons && isSameFood;
    });

    //if item already exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add a new cart item
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //total price
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addons addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //total items
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //helpers
  //generate a reciept
  //fromat double value into memory
  //format list of addons into a string summary
}
