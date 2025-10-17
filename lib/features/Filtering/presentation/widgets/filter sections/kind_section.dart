import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/customs/custom_filter_Section.dart';
import 'package:it_legend_task/features/Filtering/view_model/kind%20filter%20cubit/kind_filter_cubit.dart';

class KindSection extends StatelessWidget {
  const KindSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KindFilterCubit, KindFilterState>(
      builder: (context, state) {
        if (state is KindFilterLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is KindFilterSuccess) {
          final kindFilters = state.kindfilter;
          log(kindFilters.length.toString());
          return CustomFilterSection(
            filter: kindFilters,
            sectionTitle: 'النوع',
            tableName: 'kind',
          );
        } else if (state is KindFilterFailure) {
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
