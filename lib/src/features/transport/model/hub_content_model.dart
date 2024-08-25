// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:ride_app/core/model/handling_model.dart';

class HubContentModel extends ResultModel{
  int id;
  Map  model_price;
  String type;
  int size;
  int photo_id;
  HubContentModel({
    required this.id,
    required this.model_price,
    required this.type,
    required this.size,
    required this.photo_id,
  });

  HubContentModel copyWith({
    int? id,
    Map? model_price,
    String? type,
    int? size,
    int? photo_id,
  }) {
    return HubContentModel(
      id: id ?? this.id,
      model_price: model_price ?? this.model_price,
      type: type ?? this.type,
      size: size ?? this.size,
      photo_id: photo_id ?? this.photo_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'model_price': model_price,
      'type': type,
      'size': size,
      'photo_id': photo_id,
    };
  }

  factory HubContentModel.fromMap(Map<String, dynamic> map) {
    return HubContentModel(
      id: map['id'] as int,
      model_price: Map.from((map['model_price'] as Map)),
      type: map['type'] as String,
      size: map['size'] as int,
      photo_id: map['photo_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory HubContentModel.fromJson(String source) => HubContentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HubContentModel(id: $id, model_price: $model_price, type: $type, size: $size, photo_id: $photo_id)';
  }

  @override
  bool operator ==(covariant HubContentModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      mapEquals(other.model_price, model_price) &&
      other.type == type &&
      other.size == size &&
      other.photo_id == photo_id;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      model_price.hashCode ^
      type.hashCode ^
      size.hashCode ^
      photo_id.hashCode;
  }
}
