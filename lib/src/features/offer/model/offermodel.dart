// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ride_app/core/model/handling_model.dart';

class OfferModel extends ResultModel {
 String type;
 String note;
  OfferModel({
    required this.type,
    required this.note,
  });

  OfferModel copyWith({
    String? type,
    String? note,
  }) {
    return OfferModel(
      type: type ?? this.type,
      note: note ?? this.note,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'note': note,
    };
  }

  factory OfferModel.fromMap(Map<String, dynamic> map) {
    return OfferModel(
      type: map['type'] as String,
      note: map['note'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OfferModel.fromJson(String source) => OfferModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'OfferModel(type: $type, note: $note)';

  @override
  bool operator ==(covariant OfferModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.type == type &&
      other.note == note;
  }

  @override
  int get hashCode => type.hashCode ^ note.hashCode;
}
