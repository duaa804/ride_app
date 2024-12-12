part of 'addmoney_bloc.dart';

@immutable
sealed class AddmoneyEvent {}

final class AddMoney extends AddmoneyEvent {
  final  AddMoneyModel addMoneyModel;

  AddMoney({required this.addMoneyModel});
}
