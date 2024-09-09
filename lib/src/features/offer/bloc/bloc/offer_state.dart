// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'offer_bloc.dart';

sealed class OfferState {}

final class OfferInitial extends OfferState {}

class SuccessGetOffer extends OfferState {
  List<OfferModel> offer;
  SuccessGetOffer({
    required this.offer,
  });
}

final class FailedGetOffer extends OfferState {}
