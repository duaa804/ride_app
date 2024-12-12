part of 'create_wallet_bloc.dart';

@immutable
sealed class CreateWalletState {}

final class CreateWalletInitial extends CreateWalletState {}
final class LoadingState extends CreateWalletState{}
final class SuccessCreateWallet extends CreateWalletState{}
final class FailedCreateWallet extends CreateWalletState{}
