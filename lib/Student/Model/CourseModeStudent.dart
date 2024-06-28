class CourseModeStudent {
  CourseModeStudent({
      String? academicYear, 
      List<String>? course,}){
    _academicYear = academicYear;
    _course = course;
}

  CourseModeStudent.fromJson(dynamic json) {
    _academicYear = json['academicYear'];
    _course = json['course'] != null ? json['course'].cast<String>() : [];
  }
  String? _academicYear;
  List<String>? _course;
CourseModeStudent copyWith({  String? academicYear,
  List<String>? course,
}) => CourseModeStudent(  academicYear: academicYear ?? _academicYear,
  course: course ?? _course,
);
  String? get academicYear => _academicYear;
  List<String>? get course => _course;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['academicYear'] = _academicYear;
    map['course'] = _course;
    return map;
  }

}