class ShowCourseModel {
  ShowCourseModel({
    this.by,
    this.course,
  });

  ShowCourseModel.fromJson(dynamic json) {
    by = json['By :'];
    course = json['course'] != null ? Course.fromJson(json['course']) : null;
  }

  String? by;
  Course? course;

  ShowCourseModel copyWith({
    String? by,
    Course? course,
  }) =>
      ShowCourseModel(
        by: by ?? this.by,
        course: course ?? this.course,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['By :'] = by;
    if (course != null) {
      map['course'] = course?.toJson();
    }
    return map;
  }
}

class Course {
  Course({
    this.id,
    this.courseName,
    this.academicYear,
    this.mid,
    this.pe,
    this.ve,
    this.finals,
    this.total,
    this.description,
    this.goals,
    this.createdAt,
    this.updatedAt,
  });

  Course.fromJson(dynamic json) {
    id = json['id'];
    courseName = json['Course Name'];
    academicYear = json['Academic Year'];
    mid = json['Mid'];
    pe = json['P-E'];
    ve = json['V-E'];
    finals = json['Final'];
    total = json['Total'];
    description = json['Description'];
    goals = json['Goals'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  dynamic id;
  String? courseName;
  String? academicYear;
  dynamic mid;
  dynamic pe;
  dynamic ve;
  dynamic finals;
  dynamic total;
  String? description;
  String? goals;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Course Name'] = courseName;
    map['Academic Year'] = academicYear;
    map['Mid'] = mid;
    map['P-E'] = pe;
    map['V-E'] = ve;
    map['Final'] = finals;
    map['Total'] = total;
    map['Description'] = description;
    map['Goals'] = goals;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}
