import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ride_app/core/model/handling_model.dart';
import 'package:ride_app/core/service/create_wallet_service.dart';
import 'package:ride_app/src/features/auth/bloc/auth_state.dart';
import 'package:ride_app/src/features/wallet/model/new_wallet_model.dart';

part 'create_wallet_event.dart';
part 'create_wallet_state.dart';

class CreateWalletBloc extends Bloc<CreateWalletEvent, CreateWalletState> {
  CreateWalletBloc() : super(CreateWalletInitial()) {
    on<NewWallet>((event, emit) async {
      emit(LoadingState());
      ResultModel result =
          await CreateWalletServiceImp().createWallet(event.newWalletModel);
      if (result is DataSuccess) {
        emit(SuccessCreateWallet());
      } else {
        emit(FailedCreateWallet());
      }
    });
  }
}
