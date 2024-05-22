class Questionnair {
  Questionnair({
    this.question,
    this.percentages,
  });

  Questionnair.fromJson(dynamic json) {
    question =
        json['question'] != null ? Question.fromJson(json['question']) : null;
    if (json['percentages'] != null) {
      percentages = [];
      json['percentages'].forEach((v) {
        percentages?.add(Percentages.fromJson(v));
      });
    }
  }

  Question? question;
  List<Percentages>? percentages;

  Questionnair copyWith({
    Question? question,
    List<Percentages>? percentages,
  }) =>
      Questionnair(
        question: question ?? this.question,
        percentages: percentages ?? this.percentages,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (question != null) {
      map['question'] = question?.toJson();
    }
    if (percentages != null) {
      map['percentages'] = percentages?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Percentages {
  Percentages({
    this.choiceContent,
    this.percentage,
  });

  Percentages.fromJson(dynamic json) {
    choiceContent = json['choice_content'];
    percentage = json['percentage'];
  }

  String? choiceContent;
  num? percentage;

  Percentages copyWith({
    String? choiceContent,
    num? percentage,
  }) =>
      Percentages(
        choiceContent: choiceContent ?? this.choiceContent,
        percentage: percentage ?? this.percentage,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['choice_content'] = choiceContent;
    map['percentage'] = percentage;
    return map;
  }
}

class Question {
  Question({
    this.id,
    this.content,
    this.createdAt,
    this.updatedAt,
    this.questionnairId,
    this.choices,
  });

  Question.fromJson(dynamic json) {
    id = json['id'];
    content = json['content'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    questionnairId = json['questionnair_id'];
    if (json['choices'] != null) {
      choices = [];
      json['choices'].forEach((v) {
        choices?.add(Choices.fromJson(v));
      });
    }
  }

  num? id;
  String? content;
  String? createdAt;
  String? updatedAt;
  num? questionnairId;
  List<Choices>? choices;

  Question copyWith({
    num? id,
    String? content,
    String? createdAt,
    String? updatedAt,
    num? questionnairId,
    List<Choices>? choices,
  }) =>
      Question(
        id: id ?? this.id,
        content: content ?? this.content,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        questionnairId: questionnairId ?? this.questionnairId,
        choices: choices ?? this.choices,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['content'] = content;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['questionnair_id'] = questionnairId;
    if (choices != null) {
      map['choices'] = choices?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Choices {
  Choices({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.content,
    this.questionId,
  });

  Choices.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    content = json['content'];
    questionId = json['question_id'];
  }

  num? id;
  String? createdAt;
  String? updatedAt;
  String? content;
  num? questionId;

  Choices copyWith({
    num? id,
    String? createdAt,
    String? updatedAt,
    String? content,
    num? questionId,
  }) =>
      Choices(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        content: content ?? this.content,
        questionId: questionId ?? this.questionId,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['content'] = content;
    map['question_id'] = questionId;
    return map;
  }
}
