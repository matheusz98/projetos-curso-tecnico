class Recipe {
  String photo;
  String name;
  int preparationTime;
  int numberOfFavorites;
  int numberOfComments;
  int income;
  List<String> ingredientsPaste;
  List<String> ingredientsRoof;

  Recipe({
      required this.photo,
      required this.name,
      required this.preparationTime,
      required this.numberOfFavorites,
      required this.numberOfComments,
      required this.income,
      required this.ingredientsPaste,
      required this.ingredientsRoof,
  });
}
