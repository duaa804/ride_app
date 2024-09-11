import 'package:bloc/bloc.dart';
import 'package:ride_app/core/model/handling_model.dart';
import 'package:ride_app/core/service/offer_service.dart';
import 'package:ride_app/src/features/offer/model/offermodel.dart';

part 'offer_event.dart';
part 'offer_state.dart';

class OfferBloc extends Bloc<OfferEvent, OfferState> {
  OfferBloc() : super(OfferInitial()) {
    on<GetOffer>((event, emit) async {
      emit(OfferInitial());
      ResultModel result = await OfferServiceImp().getOffer();
      print(result);

      if (result is ListOf<OfferModel>) {
        emit(SuccessGetOffer(offer: result.data));
      } else {
        emit(FailedGetOffer());
      }
    });
  }
}
