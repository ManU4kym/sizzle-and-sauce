class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> addons;

  Food(
    this.category,
    this.addons, {
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
  });
}

//categories

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// food addons

class Addon {
  String name;
  double price;
  Addon({
    required this.name,
    required this.price,
  });
}
