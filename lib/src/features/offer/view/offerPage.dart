import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/widgets/listTiles.dart';
import 'package:ride_app/src/features/offer/bloc/bloc/offer_bloc.dart';

class Offerpage extends StatelessWidget {
  const Offerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: color.greenRectangle),
                child: const Icon(
                  Icons.density_medium_rounded,
                  size: 15,
                )),
          ),
          title: const Text('Offer'),
          centerTitle: true,
       
        ),
        body: BlocProvider(
          create: (context) => OfferBloc()..add(GetOffer()),
          child: BlocConsumer<OfferBloc, OfferState>(
            listener: (context, state) {
               if (state is OfferInitial) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("This hub is not have any car"),
                        backgroundColor: Colors.red,
                      ));
                    }
                  
            },      
                builder: (context, state) {
                  if (state is OfferInitial) {
                   
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is SuccessGetOffer) {
                    return ListView.builder(
                      itemCount: state.offer.length,
                      itemBuilder: (context,index)
                      => offerListTile(offer: '${state.offer[index].type}', details: '${state.offer[index].note}')
                    );
                  } else {
                    return  const Center(child: CircularProgressIndicator());
                  }
                },
              ),
        )
    
    // floatingActionButton: FloatingActionButton(onPressed: (){
    //    context.read<OfferBloc>().add(GetOffer());
    // },),
    );
  }
}
