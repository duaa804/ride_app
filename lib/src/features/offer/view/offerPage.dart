import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_app/core/widgets/listTiles.dart';
import 'package:ride_app/src/features/offer/bloc/bloc/offer_bloc.dart';

class Offerpage extends StatelessWidget {
  const Offerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => OfferBloc()..add(GetOffer()),
      child: BlocConsumer<OfferBloc, OfferState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is OfferInitial) {
            context.read<OfferBloc>().add(GetOffer());
            return const Center(child: CircularProgressIndicator());
          } else if (state is SuccessGetOffer) {
            return Column(
              children: [
                offerListTile(offer: state.offer, details: state.offer)
              ],
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    ));
  }
}
