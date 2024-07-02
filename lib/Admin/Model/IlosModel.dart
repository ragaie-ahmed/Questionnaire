class IlosModel {
  IlosModel({
      num? id, 
      String? courseName,}){
    _id = id;
    _courseName = courseName;
}

  IlosModel.fromJson(dynamic json) {
    _id = json['id'];
    _courseName = json['Course Name'];
  }
  num? _id;
  String? _courseName;
IlosModel copyWith({  num? id,
  String? courseName,
}) => IlosModel(  id: id ?? _id,
  courseName: courseName ?? _courseName,
);
  num? get id => _id;
  String? get courseName => _courseName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['Course Name'] = _courseName;
    return map;
  }

}