// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../../core/model/handling_model.dart';

class BicycleModel extends ResultModel {
 int id;
 Map model_price;
 int size;
 String photoPath;
 String type;
  BicycleModel({
    required this.id,
    required this.model_price,
    required this.size,
    required this.photoPath,
    required this.type,
  });

  BicycleModel copyWith({
    int? id,
    Map? model_price,
    int? size,
    String? photoPath,
    String? type,
  }) {
    return BicycleModel(
      id: id ?? this.id,
      model_price: model_price ?? this.model_price,
      size: size ?? this.size,
      photoPath: photoPath ?? this.photoPath,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'model_price': model_price,
      'size': size,
      'photoPath': photoPath,
      'type': type,
    };
  }

  factory BicycleModel.fromMap(Map<String, dynamic> map) {
    return BicycleModel(
      id: map['id'] as int,
      model_price: Map.from((map['model_price'] as Map)),
      size: map['size'] as int,
      photoPath: map['photoPath'] as String,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BicycleModel.fromJson(String source) => BicycleModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BicycleModel(id: $id, model_price: $model_price, size: $size, photoPath: $photoPath, type: $type)';
  }

  @override
  bool operator ==(covariant BicycleModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      mapEquals(other.model_price, model_price) &&
      other.size == size &&
      other.photoPath == photoPath &&
      other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      model_price.hashCode ^
      size.hashCode ^
      photoPath.hashCode ^
      type.hashCode;
  }
}
