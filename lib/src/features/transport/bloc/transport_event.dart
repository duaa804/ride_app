// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:ride_app/src/features/auth/model/login_model.dart';
import 'package:ride_app/src/features/transport/model/reservation_model.dart';

class TransportEvent{}
final class TransportEventInitial extends TransportEvent{}
class GetHubContent extends TransportEvent {}
class createReservation extends TransportEvent {
  ReservationModel reservationModel;
  createReservation({
    required this.reservationModel,
  });
}

class GetBicycleDetailes extends TransportEvent {
}