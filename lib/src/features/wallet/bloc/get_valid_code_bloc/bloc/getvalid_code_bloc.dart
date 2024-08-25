import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ride_app/core/model/handling_model.dart';
import 'package:ride_app/core/service/create_wallet_service.dart';

part 'getvalid_code_event.dart';
part 'getvalid_code_state.dart';

class GetvalidCodeBloc extends Bloc<GetvalidCodeEvent, GetvalidCodeState> {
  GetvalidCodeBloc() : super(GetvalidCodeInitial()) {
    on<GetvalidCodeEvent>((event, emit) async {
      emit(GetvalidCodeInitial());
      ResultModel result = await CreateWalletServiceImp().getValidCode();
      if (result is DataSuccess) {
        emit(SuccessGetValidCode());
      } else {
        emit(FailedGetValidCode());
      }
    });
  }
}
