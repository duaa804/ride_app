// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ride_app/core/model/handling_model.dart';

class AddMoneyModel extends ResultModel{
  String code;
  AddMoneyModel({
    required this.code,
  });

  AddMoneyModel copyWith({
    String? code,
  }) {
    return AddMoneyModel(
      code: code ?? this.code,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory AddMoneyModel.fromMap(Map<String, dynamic> map) {
    return AddMoneyModel(
      code: map['code'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddMoneyModel.fromJson(String source) => AddMoneyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AddMoneyModel(code: $code)';

  @override
  bool operator ==(covariant AddMoneyModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.code == code;
  }

  @override
  int get hashCode => code.hashCode;
}
