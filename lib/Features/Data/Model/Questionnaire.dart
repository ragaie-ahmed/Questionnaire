class Questionnaire {
  Questionnaire({
      Question? question, 
      List<Percentages>? percentages,}){
    _question = question;
    _percentages = percentages;
}

  Questionnaire.fromJson(dynamic json) {
    _question = json['question'] != null ? Question.fromJson(json['question']) : null;
    if (json['percentages'] != null) {
      _percentages = [];
      json['percentages'].forEach((v) {
        _percentages?.add(Percentages.fromJson(v));
      });
    }
  }
  Question? _question;
  List<Percentages>? _percentages;
Questionnaire copyWith({  Question? question,
  List<Percentages>? percentages,
}) => Questionnaire(  question: question ?? _question,
  percentages: percentages ?? _percentages,
);
  Question? get question => _question;
  List<Percentages>? get percentages => _percentages;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_question != null) {
      map['question'] = _question?.toJson();
    }
    if (_percentages != null) {
      map['percentages'] = _percentages?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Percentages {
  Percentages({
      String? choiceContent, 
      num? percentage,}){
    _choiceContent = choiceContent;
    _percentage = percentage;
}

  Percentages.fromJson(dynamic json) {
    _choiceContent = json['choice_content'];
    _percentage = json['percentage'];
  }
  String? _choiceContent;
  num? _percentage;
Percentages copyWith({  String? choiceContent,
  num? percentage,
}) => Percentages(  choiceContent: choiceContent ?? _choiceContent,
  percentage: percentage ?? _percentage,
);
  String? get choiceContent => _choiceContent;
  num? get percentage => _percentage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['choice_content'] = _choiceContent;
    map['percentage'] = _percentage;
    return map;
  }

}

class Question {
  Question({
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

  Question.fromJson(dynamic json) {
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
Question copyWith({  num? id,
  String? content,
  String? createdAt,
  String? updatedAt,
  num? questionnairId,
  List<Choices>? choices,
}) => Question(  id: id ?? _id,
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