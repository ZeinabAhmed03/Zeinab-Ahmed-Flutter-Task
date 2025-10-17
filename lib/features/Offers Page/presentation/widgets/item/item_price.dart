import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:it_legend_task/features/Offers%20Page/data/models/item_model.dart';
import 'package:it_legend_task/features/Offers%20Page/view_model/Items%20Cubit/items_cubit.dart';

class ItemPrice extends StatefulWidget {
  const ItemPrice({super.key, required this.item});
  final ItemModel item;
  @override
  State<ItemPrice> createState() => _ItemPriceState();
}

class _ItemPriceState extends State<ItemPrice> {
  late ItemsCubit itemsCubit;
  @override
  void initState() {
    itemsCubit = BlocProvider.of<ItemsCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  '32,000,000جم/',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFF4144),
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Divider(),
                    Text(
                      '60,000,000',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textDirection: TextDirection.rtl,

                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7F7F7F),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(width: 22),

        IconButton(
          padding: EdgeInsets.only(right: 12),
          onPressed: () {
            if (!itemsCubit.isFavorite.contains(widget.item)) {
              itemsCubit.isFavorite.add(widget.item);

              setState(() {});
            } else {
              itemsCubit.isFavorite.remove(widget.item);

              setState(() {});
            }
          },
          icon: Icon(
            itemsCubit.isFavorite.contains(widget.item)
                ? Icons.favorite
                : Icons.favorite_border_outlined,
            size: 24,
            color: itemsCubit.isFavorite.contains(widget.item)
                ? Colors.red
                : Color(0xff090F1F),
          ),
        ),
      ],
    );
  }
}
