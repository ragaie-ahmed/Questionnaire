class CoursesModel {
  final String name;

  CoursesModel({required this.name});

  factory CoursesModel.fromJson(String json) {
    return CoursesModel(name: json);
  }
}
