class ReportModel {
  ReportModel({
      this.report,});

  ReportModel.fromJson(dynamic json) {
    report = json['report'] != null ? Report.fromJson(json['report']) : null;
  }
  Report? report;
ReportModel copyWith({  Report? report,
}) => ReportModel(  report: report ?? this.report,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (report != null) {
      map['report'] = report?.toJson();
    }
    return map;
  }

}

class Report {
  Report({
      this.id, 
      this.courseName, 
      this.successRate, 
      this.improvementPlan, 
      this.causesofDrawbacks, 
      this.contentEffectiveness, 
      this.createdAt, 
      this.updatedAt,});

  Report.fromJson(dynamic json) {
    id = json['id'];
    courseName = json['Course Name'];
    successRate = json['Success Rate'];
    improvementPlan = json['Improvement Plan'];
    causesofDrawbacks = json['Causes of Drawbacks'];
    contentEffectiveness = json['Content Effectiveness'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? courseName;
  String? successRate;
  String? improvementPlan;
  String? causesofDrawbacks;
  String? contentEffectiveness;
  String? createdAt;
  String? updatedAt;
Report copyWith({  num? id,
  String? courseName,
  String? successRate,
  String? improvementPlan,
  String? causesofDrawbacks,
  String? contentEffectiveness,
  String? createdAt,
  String? updatedAt,
}) => Report(  id: id ?? this.id,
  courseName: courseName ?? this.courseName,
  successRate: successRate ?? this.successRate,
  improvementPlan: improvementPlan ?? this.improvementPlan,
  causesofDrawbacks: causesofDrawbacks ?? this.causesofDrawbacks,
  contentEffectiveness: contentEffectiveness ?? this.contentEffectiveness,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Course Name'] = courseName;
    map['Success Rate'] = successRate;
    map['Improvement Plan'] = improvementPlan;
    map['Causes of Drawbacks'] = causesofDrawbacks;
    map['Content Effectiveness'] = contentEffectiveness;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}