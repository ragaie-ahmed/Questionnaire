class QuestionnaieModel {
  QuestionnaieModel({
      num? id, 
      String? title, 
      dynamic description, 
      String? status, 
      String? createdAt, 
      String? updatedAt, 
      num? questionnairCategoryId, 
      dynamic courseId, 
      dynamic course, 
      List<Questions>? questions,}){
    _id = id;
    _title = title;
    _description = description;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _questionnairCategoryId = questionnairCategoryId;
    _courseId = courseId;
    _course = course;
    _questions = questions;
}

  QuestionnaieModel.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _questionnairCategoryId = json['questionnair_category_id'];
    _courseId = json['course_id'];
    _course = json['course'];
    if (json['questions'] != null) {
      _questions = [];
      json['questions'].forEach((v) {
        _questions?.add(Questions.fromJson(v));
      });
    }
  }
  num? _id;
  String? _title;
  dynamic _description;
  String? _status;
  String? _createdAt;
  String? _updatedAt;
  num? _questionnairCategoryId;
  dynamic _courseId;
  dynamic _course;
  List<Questions>? _questions;
QuestionnaieModel copyWith({  num? id,
  String? title,
  dynamic description,
  String? status,
  String? createdAt,
  String? updatedAt,
  num? questionnairCategoryId,
  dynamic courseId,
  dynamic course,
  List<Questions>? questions,
}) => QuestionnaieModel(  id: id ?? _id,
  title: title ?? _title,
  description: description ?? _description,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  questionnairCategoryId: questionnairCategoryId ?? _questionnairCategoryId,
  courseId: courseId ?? _courseId,
  course: course ?? _course,
  questions: questions ?? _questions,
);
  num? get id => _id;
  String? get title => _title;
  dynamic get description => _description;
  String? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get questionnairCategoryId => _questionnairCategoryId;
  dynamic get courseId => _courseId;
  dynamic get course => _course;
  List<Questions>? get questions => _questions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['questionnair_category_id'] = _questionnairCategoryId;
    map['course_id'] = _courseId;
    map['course'] = _course;
    if (_questions != null) {
      map['questions'] = _questions?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Questions {
  Questions({
      num? id, 
      String? content, 
      String? createdAt, 
      String? updatedAt, 
      num? questionnairId, 
      List<Choices>? choices,}){
    _id = id;
    _content = content;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _questionnairId = questionnairId;
    _choices = choices;
}

  Questions.fromJson(dynamic json) {
    _id = json['id'];
    _content = json['content'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _questionnairId = json['questionnair_id'];
    if (json['choices'] != null) {
      _choices = [];
      json['choices'].forEach((v) {
        _choices?.add(Choices.fromJson(v));
      });
    }
  }
  num? _id;
  String? _content;
  String? _createdAt;
  String? _updatedAt;
  num? _questionnairId;
  List<Choices>? _choices;
Questions copyWith({  num? id,
  String? content,
  String? createdAt,
  String? updatedAt,
  num? questionnairId,
  List<Choices>? choices,
}) => Questions(  id: id ?? _id,
  content: content ?? _content,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  questionnairId: questionnairId ?? _questionnairId,
  choices: choices ?? _choices,
);
  num? get id => _id;
  String? get content => _content;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get questionnairId => _questionnairId;
  List<Choices>? get choices => _choices;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['content'] = _content;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['questionnair_id'] = _questionnairId;
    if (_choices != null) {
      map['choices'] = _choices?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Choices {
  Choices({
      num? id, 
      String? createdAt, 
      String? updatedAt, 
      String? content, 
      num? questionId,}){
    _id = id;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _content = content;
    _questionId = questionId;
}

  Choices.fromJson(dynamic json) {
    _id = json['id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _content = json['content'];
    _questionId = json['question_id'];
  }
  num? _id;
  String? _createdAt;
  String? _updatedAt;
  String? _content;
  num? _questionId;
Choices copyWith({  num? id,
  String? createdAt,
  String? updatedAt,
  String? content,
  num? questionId,
}) => Choices(  id: id ?? _id,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  content: content ?? _content,
  questionId: questionId ?? _questionId,
);
  num? get id => _id;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get content => _content;
  num? get questionId => _questionId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['content'] = _content;
    map['question_id'] = _questionId;
    return map;
  }

}