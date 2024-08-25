// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ride_app/core/model/handling_model.dart';

class NewWalletModel extends ResultModel {
  String securityCode;
  String confirmSecurityCode;
  String bankAccount;
  NewWalletModel({
    required this.securityCode,
    required this.confirmSecurityCode,
    required this.bankAccount,
  });

  NewWalletModel copyWith({
    String? securityCode,
    String? confirmSecurityCode,
    String? bankAccount,
  }) {
    return NewWalletModel(
      securityCode: securityCode ?? this.securityCode,
      confirmSecurityCode: confirmSecurityCode ?? this.confirmSecurityCode,
      bankAccount: bankAccount ?? this.bankAccount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityCode': securityCode,
      'confirmSecurityCode': confirmSecurityCode,
      'bankAccount': bankAccount,
    };
  }

  factory NewWalletModel.fromMap(Map<String, dynamic> map) {
    return NewWalletModel(
      securityCode: map['securityCode'] as String,
      confirmSecurityCode: map['confirmSecurityCode'] as String,
      bankAccount: map['bankAccount'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewWalletModel.fromJson(String source) => NewWalletModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'NewWalletModel(securityCode: $securityCode, confirmSecurityCode: $confirmSecurityCode, bankAccount: $bankAccount)';

  @override
  bool operator ==(covariant NewWalletModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.securityCode == securityCode &&
      other.confirmSecurityCode == confirmSecurityCode &&
      other.bankAccount == bankAccount;
  }

  @override
  int get hashCode => securityCode.hashCode ^ confirmSecurityCode.hashCode ^ bankAccount.hashCode;
}
