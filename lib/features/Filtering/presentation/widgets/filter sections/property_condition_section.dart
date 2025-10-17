import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/customs/custom_filter_Section.dart';
import 'package:it_legend_task/features/Filtering/view_model/property%20condition%20filter%20cubit/property_condition_filter_cubit.dart';

class PropertyConditionSection extends StatelessWidget {
  const PropertyConditionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      PropertyConditionFilterCubit,
      PropertyConditionFilterState
    >(
      builder: (context, state) {
        if (state is PropertyConditionsFilterLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is PropertyConditionsFilterSuccess) {
          final filter = state.propertyConditionsFilter;
          return CustomFilterSection(
            filter: filter,
            sectionTitle: 'حالة العقار',
            tableName: 'propertyConditions',
          );
        } else if (state is PropertyConditionsFilterFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return Center(
            child: Text('There was a problem loading data, please try later'),
          );
        }
      },
    );
  }
}
