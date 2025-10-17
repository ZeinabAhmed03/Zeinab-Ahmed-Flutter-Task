import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/categories_list_view.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/home_header.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/item/item_grid_view.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/news_banner.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/offers/offers_list_view.dart';

class OffersViewBody extends StatelessWidget {
  const OffersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                HomeHeader(),
                SizedBox(height: 12),
                OffersListView(),
                SizedBox(height: 24),
                CategoriesListView(),
                NewsBanner(),
                ItemGridView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
