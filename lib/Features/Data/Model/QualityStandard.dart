class QualityStandard {
  QualityStandard({
      this.id, 
      this.name, 
      this.image, 
      this.description, 
      this.createdAt, 
      this.updatedAt,});

  QualityStandard.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? name;
  String? image;
  String? description;
  String? createdAt;
  String? updatedAt;
QualityStandard copyWith({  num? id,
  String? name,
  String? image,
  String? description,
  String? createdAt,
  String? updatedAt,
}) => QualityStandard(  id: id ?? this.id,
  name: name ?? this.name,
  image: image ?? this.image,
  description: description ?? this.description,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['image'] = image;
    map['description'] = description;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}