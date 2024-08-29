import 'package:mockito/mockito.dart';
import 'package:ride_app/core/service/reservation_service/remote/reservation_service.dart';
import 'package:ride_app/src/features/transport/model/reservation_model.dart';
bool? _isEmptyy;
bool? _isNotEmpty;
class MockReservationService extends Mock implements ReeservationService {
  @override
  Future<bool>createReservation(ReservationModel reservationModel)async{
    try {
      var testEmpty=reservationEmpty(reservationModel);
      await Future.delayed(Duration(seconds: 1));
      if (testEmpty==false) {
        return true;
      } else {
        throw Exception();
      }
    } catch (e) {
      return false;
    }
  }
}

bool reservationEmpty(ReservationModel reservationModel){
  if(reservationModel==null)
  { 
    return false;
  }
   else{
    return true;
   }
}