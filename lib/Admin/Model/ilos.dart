class Ilos {
  Ilos({
      CourseIlos? courseIlos,}){
    _courseIlos = courseIlos;
}

  Ilos.fromJson(dynamic json) {
    _courseIlos = json['CourseIlos'] != null ? CourseIlos.fromJson(json['CourseIlos']) : null;
  }
  CourseIlos? _courseIlos;
Ilos copyWith({  CourseIlos? courseIlos,
}) => Ilos(  courseIlos: courseIlos ?? _courseIlos,
);
  CourseIlos? get courseIlos => _courseIlos;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_courseIlos != null) {
      map['CourseIlos'] = _courseIlos?.toJson();
    }
    return map;
  }

}

class CourseIlos {
  CourseIlos({
      num? id, 
      String? courseName, 
      num? courseCode, 
      String? aims, 
      String? knowledgeUnderstanding, 
      String? intellectualSkills, 
      String? professionalSkills, 
      String? generalSkills, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _courseName = courseName;
    _courseCode = courseCode;
    _aims = aims;
    _knowledgeUnderstanding = knowledgeUnderstanding;
    _intellectualSkills = intellectualSkills;
    _professionalSkills = professionalSkills;
    _generalSkills = generalSkills;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  CourseIlos.fromJson(dynamic json) {
    _id = json['id'];
    _courseName = json['Course Name'];
    _courseCode = json['Course Code'];
    _aims = json['Aims'];
    _knowledgeUnderstanding = json['Knowledge\$Understanding'];
    _intellectualSkills = json['Intellectual Skills'];
    _professionalSkills = json['Professional Skills'];
    _generalSkills = json['General Skills'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _courseName;
  num? _courseCode;
  String? _aims;
  String? _knowledgeUnderstanding;
  String? _intellectualSkills;
  String? _professionalSkills;
  String? _generalSkills;
  String? _createdAt;
  String? _updatedAt;
CourseIlos copyWith({  num? id,
  String? courseName,
  num? courseCode,
  String? aims,
  String? knowledgeUnderstanding,
  String? intellectualSkills,
  String? professionalSkills,
  String? generalSkills,
  String? createdAt,
  String? updatedAt,
}) => CourseIlos(  id: id ?? _id,
  courseName: courseName ?? _courseName,
  courseCode: courseCode ?? _courseCode,
  aims: aims ?? _aims,
  knowledgeUnderstanding: knowledgeUnderstanding ?? _knowledgeUnderstanding,
  intellectualSkills: intellectualSkills ?? _intellectualSkills,
  professionalSkills: professionalSkills ?? _professionalSkills,
  generalSkills: generalSkills ?? _generalSkills,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get courseName => _courseName;
  num? get courseCode => _courseCode;
  String? get aims => _aims;
  String? get knowledgeUnderstanding => _knowledgeUnderstanding;
  String? get intellectualSkills => _intellectualSkills;
  String? get professionalSkills => _professionalSkills;
  String? get generalSkills => _generalSkills;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['Course Name'] = _courseName;
    map['Course Code'] = _courseCode;
    map['Aims'] = _aims;
    map['Knowledge\$Understanding'] = _knowledgeUnderstanding;
    map['Intellectual Skills'] = _intellectualSkills;
    map['Professional Skills'] = _professionalSkills;
    map['General Skills'] = _generalSkills;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}