part of 'addmoney_bloc.dart';

@immutable
sealed class AddmoneyState {}

final class AddmoneyInitial extends AddmoneyState {}
final class SuccessAddMoney extends AddmoneyState{}
final class FailedAddMoney extends AddmoneyState{}
