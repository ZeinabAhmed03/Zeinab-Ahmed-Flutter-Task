import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Filtering/data/models/filter_model.dart';
import 'package:it_legend_task/features/Filtering/view_model/kind%20filter%20cubit/kind_filter_cubit.dart';
import 'package:it_legend_task/features/Filtering/view_model/number%20of%20rooms%20filter%20cubit/number_of_rooms_filter_cubit.dart';
import 'package:it_legend_task/features/Filtering/view_model/payment%20methods%20filter%20cubit/payment_method_filter_cubit.dart';
import 'package:it_legend_task/features/Filtering/view_model/property%20condition%20filter%20cubit/property_condition_filter_cubit.dart';

class CustomSectionsContainer extends StatelessWidget {
  const CustomSectionsContainer({
    super.key,
    required this.filter,
    required this.tableName,
  });
  final FilterModel filter;
  final String tableName;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size(0, 0),
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 16),
        backgroundColor: filter.isSelected == 1
            ? Color(0xffF2F8FF)
            : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          side: BorderSide(
            style: BorderStyle.solid,
            width: filter.isSelected == 1 ? 2 : 1,
            color: filter.isSelected == 1
                ? Color(0xff0079FE)
                : Color(0xffE5E5E5),
          ),
        ),
      ),
      onPressed: () {
        onTapFilter(context);
      },
      child: Text(
        filter.name,
        textDirection: TextDirection.rtl,
        style: const TextStyle(
          color: Color(0xff84878F),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  void onTapFilter(BuildContext context) {
    if (tableName == 'kind') {
      BlocProvider.of<KindFilterCubit>(
        context,
      ).onFilterTapped(tableName, filter.id);
    } else if (tableName == 'numberOfRooms') {
      BlocProvider.of<NumberOfRoomsFilterCubit>(
        context,
      ).onFilterTapped(tableName, filter.id);
    }
    if (tableName == 'paymentMethods') {
      BlocProvider.of<PaymentMethodFilterCubit>(
        context,
      ).onFilterTapped(tableName, filter.id);
    }
    if (tableName == 'propertyConditions') {
      BlocProvider.of<PropertyConditionFilterCubit>(
        context,
      ).onFilterTapped(tableName, filter.id);
    }
  }
}
