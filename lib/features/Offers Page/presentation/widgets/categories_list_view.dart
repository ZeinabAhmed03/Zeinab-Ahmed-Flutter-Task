import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/custom_category.dart';
import 'package:it_legend_task/features/Offers%20Page/view_model/Category%20Cubit/category_cubit.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategoryLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is CategorySuccess) {
          final categories = state.categories;
          return SizedBox(
            height: 84,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomCategory(category: categories[index]),
                );
              },
            ),
          );
        } else if (state is CategoryFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return Center(
            child: Text(
              'There was a problem loading data, please try again later',
            ),
          );
        }
      },
    );
  }
}
