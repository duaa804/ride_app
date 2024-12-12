// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ride_app/core/model/handling_model.dart';

class ReservationModel{
  int bicycleId;
  int fromHubId;
  int toHubId;
  int duration;
  String startTime;
  String endTime;
  String reservationStatus;
  String paymentMethod;
  ReservationModel({
    required this.bicycleId,
    required this.fromHubId,
    required this.toHubId,
    required this.duration,
    required this.startTime,
    required this.endTime,
    required this.reservationStatus,
    required this.paymentMethod,
  });

  

  ReservationModel copyWith({
    int? bicycleId,
    int? fromHubId,
    int? toHubId,
    int? duration,
    String? startTime,
    String? endTime,
    String? reservationStatus,
    String? paymentMethod,
  }) {
    return ReservationModel(
      bicycleId: bicycleId ?? this.bicycleId,
      fromHubId: fromHubId ?? this.fromHubId,
      toHubId: toHubId ?? this.toHubId,
      duration: duration ?? this.duration,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      reservationStatus: reservationStatus ?? this.reservationStatus,
      paymentMethod: paymentMethod ?? this.paymentMethod,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bicycleId': bicycleId,
      'fromHubId': fromHubId,
      'toHubId': toHubId,
      'duration': duration,
      'startTime': startTime,
      'endTime': endTime,
      'reservationStatus': reservationStatus,
      'paymentMethod': paymentMethod,
    };
  }

  factory ReservationModel.fromMap(Map<String, dynamic> map) {
    return ReservationModel(
      bicycleId: map['bicycleId'] as int,
      fromHubId: map['fromHubId'] as int,
      toHubId: map['toHubId'] as int,
      duration: map['duration'] as int,
      startTime: map['startTime'] as String,
      endTime: map['endTime'] as String,
      reservationStatus: map['reservationStatus'] as String,
      paymentMethod: map['paymentMethod'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReservationModel.fromJson(String source) => ReservationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReservationModel(bicycleId: $bicycleId, fromHubId: $fromHubId, toHubId: $toHubId, duration: $duration, startTime: $startTime, endTime: $endTime, reservationStatus: $reservationStatus, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(covariant ReservationModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.bicycleId == bicycleId &&
      other.fromHubId == fromHubId &&
      other.toHubId == toHubId &&
      other.duration == duration &&
      other.startTime == startTime &&
      other.endTime == endTime &&
      other.reservationStatus == reservationStatus &&
      other.paymentMethod == paymentMethod;
  }

  @override
  int get hashCode {
    return bicycleId.hashCode ^
      fromHubId.hashCode ^
      toHubId.hashCode ^
      duration.hashCode ^
      startTime.hashCode ^
      endTime.hashCode ^
      reservationStatus.hashCode ^
      paymentMethod.hashCode;
  }
}
