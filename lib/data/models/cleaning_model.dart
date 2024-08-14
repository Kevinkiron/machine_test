class CleaningModel {
  final String image;
  final String name;
  final String rating;
  final bool saved;
  final Category category;

  CleaningModel(
      {required this.image,
      required this.name,
      required this.rating,
      required this.saved,
      required this.category});
}

enum Category { house, vehicles, appliances }
