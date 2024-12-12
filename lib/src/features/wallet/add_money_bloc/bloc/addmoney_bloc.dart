import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ride_app/core/model/handling_model.dart';
import 'package:ride_app/core/service/create_wallet_service.dart';
import 'package:ride_app/src/features/wallet/model/add_money_model.dart';

part 'addmoney_event.dart';
part 'addmoney_state.dart';

class AddmoneyBloc extends Bloc<AddmoneyEvent, AddmoneyState> {
  AddmoneyBloc() : super(AddmoneyInitial()) {
    on<AddMoney>((event, emit) async {
      emit(AddmoneyInitial());
      ResultModel result =
          await CreateWalletServiceImp().addMoney(event.addMoneyModel);
      if (result is DataSuccess) {
        emit(SuccessAddMoney());
      } else {
        emit(FailedAddMoney());
      }
    });
  }
}
