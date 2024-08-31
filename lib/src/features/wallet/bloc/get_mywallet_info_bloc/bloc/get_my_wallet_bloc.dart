import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ride_app/core/model/handling_model.dart';
import 'package:ride_app/core/service/create_wallet_service.dart';

part 'get_my_wallet_event.dart';
part 'get_my_wallet_state.dart';

class GetMyWalletBloc extends Bloc<GetMyWalletEvent, GetMyWalletState> {
  GetMyWalletBloc() : super(GetMyWalletInitial()) {
    on<GetMyWalletInfo>((event, emit) async {
      emit(GetMyWalletInitial());
      ResultModel result = await CreateWalletServiceImp().getMyWalletInfo();
      if (result is DataSuccess) {
        emit(SuccessGetInfo());
      } else {
        emit(FailedGetInfo());
      }
    });
  }
}
