import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Offers%20Page/data/models/offer_model.dart';
import 'package:it_legend_task/features/Offers%20Page/view_model/Offers%20Cubit/offers_cubit.dart';

class CustomOffer extends StatelessWidget {
  const CustomOffer({super.key, required this.offer});

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<OffersCubit>(context).onOfferTapped(offer.id);
          log('offer tapped');
        },
        child: Container(
          decoration: BoxDecoration(
            color: offer.isSelected == 1
                ? Color(0xffFFF7F4)
                : Colors.transparent,
            border: BoxBorder.all(color: Color(0xffE5E5E5)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                offer.name,
                style: TextStyle(
                  color: offer.isSelected == 1
                      ? Color(0xffF95B1C)
                      : Color(0xff84878F),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
