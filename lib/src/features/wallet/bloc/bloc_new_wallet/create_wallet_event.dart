part of 'create_wallet_bloc.dart';

@immutable
sealed class CreateWalletEvent {}

final class NewWallet extends CreateWalletEvent {
  final NewWalletModel newWalletModel;

  NewWallet({required this.newWalletModel});
}
