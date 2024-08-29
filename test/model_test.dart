import 'package:flutter_test/flutter_test.dart';
import 'package:ride_app/src/features/hub/model/hub_model.dart';

void main() {
  group('HubModel', () {
    final hub = HubModel(
      id: 1,
      name: 'Test Hub',
      latitude: 35.6895,
      longitude: 139.6917,
      description: 'A test hub',
    );

    test('should create a HubModel instance', () {// hubmodel التأكد أن الغرض من نوع 
      expect(hub, isA<HubModel>());
    });

    test('should convert HubModel to map', () {//  تقوم بالتحويل بشكل صحيحto mapالتحقق من دالة 
      final map = hub.toMap();
      expect(map, {
        'id': 1,
        'name': 'Test Hub',
        'latitude': 35.6895,
        'longitude': 139.6917,
        'description': 'A test hub',
      });
    });

    test('should create HubModel from map', () {//from mapالتحقق من دالة 
      final map = {
        'id': 1,
        'name': 'Test Hub',
        'latitude': 35.6895,
        'longitude': 139.6917,
        'description': 'A test hub',
      };
      final newHub = HubModel.fromMap(map);
      expect(newHub, hub);
    });

    test('should convert HubModel to JSON', () {//jsonالتحقق من دالة 
      final json = hub.toJson();
      expect(json, '{"id":1,"name":"Test Hub","latitude":35.6895,"longitude":139.6917,"description":"A test hub"}');
    });

    test('should create HubModel from JSON', () {
      final json = '{"id":1,"name":"Test Hub","latitude":35.6895,"longitude":139.6917,"description":"A test hub"}';
      final newHub = HubModel.fromJson(json);
      expect(newHub, hub);
    });

  
  });
}
