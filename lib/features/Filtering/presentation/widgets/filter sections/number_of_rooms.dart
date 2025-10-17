import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/customs/custom_filter_Section.dart';
import 'package:it_legend_task/features/Filtering/view_model/number%20of%20rooms%20filter%20cubit/number_of_rooms_filter_cubit.dart';

class NumberOfRooms extends StatelessWidget {
  const NumberOfRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NumberOfRoomsFilterCubit, NumberOfRoomsFilterState>(
      builder: (context, state) {
        if (state is NumberOfRoomsFilterLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is NumberOfRoomsFilterSuccess) {
          final numberOfRooms = state.numberOFRoomsFilter;
          return CustomFilterSection(
            filter: numberOfRooms,
            sectionTitle: 'عدد الغرف',
            tableName: 'numberOfRooms',
          );
        } else if (state is NumberOfRoomsFilterFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return Center(
            child: Text(
              'There was a problem loading the data, please try later',
            ),
          );
        }
      },
    );
  }
}
