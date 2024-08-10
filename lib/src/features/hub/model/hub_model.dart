// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ride_app/core/model/handling_model.dart';

class HubModel extends ResultModel {
  int id;
  String name;
  double latitude;
  double longitude;
  String description;
  HubModel({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.description,
  });

  HubModel copyWith({
    int? id,
    String? name,
    double? latitude,
    double? longitude,
    String? description,
  }) {
    return HubModel(
      id: id ?? this.id,
      name: name ?? this.name,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'description': description,
    };
  }

  factory HubModel.fromMap(Map<String, dynamic> map) {
    return HubModel(
      id: map['id'] as int,
      name: map['name'] as String,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HubModel.fromJson(String source) => HubModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HubModel(id: $id, name: $name, latitude: $latitude, longitude: $longitude, description: $description)';
  }

  @override
  bool operator ==(covariant HubModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.latitude == latitude &&
      other.longitude == longitude &&
      other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      description.hashCode;
  }
}
