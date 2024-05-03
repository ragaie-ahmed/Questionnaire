class CoursesModel {
  CoursesModel({
    this.academicYear,
    this.course,
  });

  CoursesModel.fromJson(dynamic json) {
    academicYear = json['academic_year'];
    course = json['course'] != null ? Course.fromJson(json['course']) : null;
  }

  String? academicYear;
  Course? course;

  CoursesModel copyWith({
    String? academicYear,
    Course? course,
  }) =>
      CoursesModel(
        academicYear: academicYear ?? this.academicYear,
        course: course ?? this.course,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['academic_year'] = academicYear;
    if (course != null) {
      map['course'] = course?.toJson();
    }
    return map;
  }
}

class Course {
  Course({
    this.courseName,
    this.mid,
    this.pe,
    this.ve,
    this.finals,
    this.total,
    this.description,
    this.goals,
  });

  Course.fromJson(dynamic json) {
    courseName = json['Course Name'];
    mid = json['Mid'];
    pe = json['P-E'];
    ve = json['V-E'];
    finals = json['Final'];
    total = json['Total'];
    description = json['Description'];
    goals = json['Goals'];
  }

  String? courseName;
  dynamic? mid;
  dynamic? pe;
  dynamic? ve;
  dynamic? finals;
  dynamic? total;
  String? description;
  String? goals;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Course Name'] = courseName;
    map['Mid'] = mid;
    map['P-E'] = pe;
    map['V-E'] = ve;
    map['Final'] = finals;
    map['Total'] = total;
    map['Description'] = description;
    map['Goals'] = goals;
    return map;
  }
}
