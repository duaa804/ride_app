// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ride_app/core/model/handling_model.dart';

class OfferModel extends ResultModel {
  int price;
  String model_price;
  String photoPath;
  OfferModel({
    required this.price,
    required this.model_price,
    required this.photoPath,
  });

  OfferModel copyWith({
    int? price,
    String? model_price,
    String? photoPath,
  }) {
    return OfferModel(
      price: price ?? this.price,
      model_price: model_price ?? this.model_price,
      photoPath: photoPath ?? this.photoPath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'price': price,
      'model_price': model_price,
      'photoPath': photoPath,
    };
  }

  factory OfferModel.fromMap(Map<String, dynamic> map) {
    return OfferModel(
      price: map['price'] as int,
      model_price: map['model_price'] as String,
      photoPath: map['photoPath'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OfferModel.fromJson(String source) => OfferModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'OfferModel(price: $price, model_price: $model_price, photoPath: $photoPath)';

  @override
  bool operator ==(covariant OfferModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.price == price &&
      other.model_price == model_price &&
      other.photoPath == photoPath;
  }

  @override
  int get hashCode => price.hashCode ^ model_price.hashCode ^ photoPath.hashCode;
}
