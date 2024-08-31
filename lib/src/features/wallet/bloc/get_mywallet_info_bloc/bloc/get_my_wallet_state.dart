part of 'get_my_wallet_bloc.dart';

@immutable
sealed class GetMyWalletState {}

final class GetMyWalletInitial extends GetMyWalletState {}
final class SuccessGetInfo extends GetMyWalletState{}
final class FailedGetInfo extends GetMyWalletState{}
