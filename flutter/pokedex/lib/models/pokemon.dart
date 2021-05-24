class Pokemon {
  String name;
  String photo;
  String description;
  String type;
  String ability;
  double height;
  double weight;
  List<String> weaknesses;

  Pokemon({
    required this.name,
    required this.photo,
    required this.description,
    required this.type,
    required this.ability,
    required this.height,
    required this.weight,
    required this.weaknesses,
  });
}
