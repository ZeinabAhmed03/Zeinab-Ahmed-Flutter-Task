import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/item/item.dart';
import 'package:it_legend_task/features/Offers%20Page/view_model/Items%20Cubit/items_cubit.dart';

class ItemGridView extends StatelessWidget {
  const ItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsCubit, ItemsState>(
      builder: (context, state) {
        if (state is ItemsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is ItemsSuccess) {
          final items = state.items;
          return GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .48,
              mainAxisSpacing: .1,
              crossAxisSpacing: .2,
            ),
            itemBuilder: (context, index) {
              return Item(itemModel: items[index]);
            },
          );
        } else if (state is ItemsFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return Center(
            child: Text('There was a problem loadin data, please try later'),
          );
        }
      },
    );
  }
}
