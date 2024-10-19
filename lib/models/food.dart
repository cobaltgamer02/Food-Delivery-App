//food item
class Food {
  final String name; //ex: cheeseburger
  final String description; //ex: a burger fulll of cheese
  final String imagePath; //ex: lib/images/cheeseburger.png
  final double price; //ex: $4.99
  final FoodCategory category; //ex: burger
  List<Addons> availableAddons; //ex: [extra cheese, sauce extra patty]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//food categories
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

//food addons
class Addons {
  String name;
  double price;

  Addons({required this.name, required this.price});
}
