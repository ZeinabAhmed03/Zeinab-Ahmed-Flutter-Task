import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/offers/custom_offer.dart';
import 'package:it_legend_task/features/Offers%20Page/view_model/Offers%20Cubit/offers_cubit.dart';

class OffersListView extends StatelessWidget {
  const OffersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OffersCubit, OffersState>(
      builder: (context, state) {
        if (state is OffersLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is OffersSuccess) {
          final offers = state.offers;
          return SizedBox(
            height: 41,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: offers.length,
              itemBuilder: (context, index) =>
                  CustomOffer(offer: offers[index]),
            ),
          );
        } else if (state is OffersFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return Center(
            child: Text('There was a problem loading data,please try later'),
          );
        }
      },
    );
  }
}
