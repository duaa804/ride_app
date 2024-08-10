
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_app/core/service/bicycles_service.dart';
import 'package:ride_app/core/model/handling_model.dart';
import 'package:ride_app/core/service/hubs_service.dart';
import 'package:ride_app/src/features/transport/model/bicycle_model.dart';
import 'package:ride_app/src/features/transport/bloc/transport_event.dart';
import 'package:ride_app/src/features/transport/bloc/transport_state.dart';

import '../model/hub_content_model.dart';

class TransportBloc extends Bloc<TransportEvent,TransportState>{
  TransportBloc():super(TransportInitialState()){
    on<GetHubContent>((event, emit) async{
      emit(LoadingState());
      ResultModel hubContent = await HubsServiceImp().getContentOfHubById();
      if(hubContent is ListOf<HubContentModel>){
        emit(HubContentSuccessState(hubContentModel: hubContent.data));
      }else{
        emit(ErrorState());
      }
    },);

     on<GetBicycleDetailes>((event, emit) async{
      emit(LoadingState());
      ResultModel bicycleDetails = await BicyclesServiceImp().getAllBicyclesByCategoryName();
      if(bicycleDetails is ListOf<BicycleModel>){
        emit(BicycleSuccessState(bicycleDetails: bicycleDetails.data));
      }else if(bicycleDetails is ErrorModel){
        emit(ErrorState());
      }else {
        
      }
    },);

  }
} 
