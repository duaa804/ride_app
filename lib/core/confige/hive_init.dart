import 'package:hive_flutter/adapters.dart';

Box? box;
Box? box2;
openHive() async {
  await Hive.initFlutter();
  box = await Hive.openBox('app_token');
  box2=await Hive.openBox('user_location');
}
