class Product {
  String photo;
  String name;
  String description;
  double price;
  String fees;
  bool isFavorite;

  Product({
    required this.photo,
    required this.name,
    required this.description,
    required this.price,
    required this.fees,
    this.isFavorite = false,
  });
}