import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Offers%20Page/data/models/item_model.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/company_logo.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/item/item_image.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/item/item_name.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/item/item_price.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/item/sold_number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffDBDBDD)),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        height: 400,
        width: 210,
        child: Column(
          children: [
            ItemImage(image: itemModel.image),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ItemName(name: itemModel.name),
            ),
            ItemPrice(item: itemModel),
            SoldNumber(),
            const SizedBox(height: 20),

            CompanyLogo(item: itemModel),
          ],
        ),
      ),
    );
  }
}
