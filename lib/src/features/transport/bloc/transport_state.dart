// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:ride_app/src/features/transport/model/bicycle_model.dart';

import '../../hub/model/hub_content_model.dart';

class TransportState{}
final class TransportInitialState extends TransportState{}
class HubContentSuccessState extends TransportState {
  List<HubContentModel> hubContentModel;
  HubContentSuccessState({
    required this.hubContentModel,
  });
  
}
class BicycleSuccessState extends TransportState{
  List<BicycleModel> bicycleDetails;
  BicycleSuccessState({
    required this.bicycleDetails,
  });
}

class ErrorState extends TransportState {
}
class LoadingState extends TransportState{}
