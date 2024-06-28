class CourseStudentModel {
  CourseStudentModel({
      String? academicYear, 
      Course? course,}){
    _academicYear = academicYear;
    _course = course;
}

  CourseStudentModel.fromJson(dynamic json) {
    _academicYear = json['academic_year'];
    _course = json['course'] != null ? Course.fromJson(json['course']) : null;
  }
  String? _academicYear;
  Course? _course;
CourseStudentModel copyWith({  String? academicYear,
  Course? course,
}) => CourseStudentModel(  academicYear: academicYear ?? _academicYear,
  course: course ?? _course,
);
  String? get academicYear => _academicYear;
  Course? get course => _course;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['academic_year'] = _academicYear;
    if (_course != null) {
      map['course'] = _course?.toJson();
    }
    return map;
  }

}

class Course {
  Course({
      String? courseName, 
      num? mid, 
      num? pe, 
      num? ve, 
      num? finals,
      num? total, 
      String? description, 
      String? goals,}){
    _courseName = courseName;
    _mid = mid;
    _pe = pe;
    _ve = ve;
    _final = finals;
    _total = total;
    _description = description;
    _goals = goals;
}

  Course.fromJson(dynamic json) {
    _courseName = json['Course Name'];
    _mid = json['Mid'];
    _pe = json['P-E'];
    _ve = json['V-E'];
    _final = json['Final'];
    _total = json['Total'];
    _description = json['Description'];
    _goals = json['Goals'];
  }
  String? _courseName;
  num? _mid;
  num? _pe;
  num? _ve;
  num? _final;
  num? _total;
  String? _description;
  String? _goals;
Course copyWith({  String? courseName,
  num? mid,
  num? pe,
  num? ve,
  num? finals,
  num? total,
  String? description,
  String? goals,
}) => Course(  courseName: courseName ?? _courseName,
  mid: mid ?? _mid,
  pe: pe ?? _pe,
  ve: ve ?? _ve,
  finals: finals ?? _final,
  total: total ?? _total,
  description: description ?? _description,
  goals: goals ?? _goals,
);
  String? get courseName => _courseName;
  num? get mid => _mid;
  num? get pe => _pe;
  num? get ve => _ve;
  num? get finals => _final;
  num? get total => _total;
  String? get description => _description;
  String? get goals => _goals;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Course Name'] = _courseName;
    map['Mid'] = _mid;
    map['P-E'] = _pe;
    map['V-E'] = _ve;
    map['Final'] = _final;
    map['Total'] = _total;
    map['Description'] = _description;
    map['Goals'] = _goals;
    return map;
  }

}