import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Offers%20Page/data/models/item_model.dart';
import 'package:it_legend_task/features/Offers%20Page/view_model/Items%20Cubit/items_cubit.dart';

class CompanyLogo extends StatefulWidget {
  const CompanyLogo({super.key, required this.item});
  final ItemModel item;
  @override
  State<CompanyLogo> createState() => _CompanyLogoState();
}

class _CompanyLogoState extends State<CompanyLogo> {
  late ItemsCubit itemsCubit;

  @override
  void initState() {
    itemsCubit = BlocProvider.of<ItemsCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffE6F0FD),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/Vector.png',
                    height: 12,
                    width: 12,
                  ),
                ),
              ),
              Positioned(
                top: -5,
                right: -10,
                child: Icon(
                  Icons.check_circle,
                  color: Color(0xff0062E2),
                  size: 16,
                ),
              ),
            ],
          ),

          Spacer(),

          Container(
            width: 32,
            height: 24,
            decoration: BoxDecoration(
              border: BoxBorder.all(color: Color(0xffE5E5E5)),
              borderRadius: BorderRadius.circular(4),
            ),
            child: SizedBox(
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  if (!itemsCubit.isInCart.contains(widget.item)) {
                    itemsCubit.isInCart.add(widget.item);

                    setState(() {});
                  } else {
                    itemsCubit.isInCart.remove(widget.item);

                    setState(() {});
                  }
                },
                icon: Icon(
                  itemsCubit.isInCart.contains(widget.item)
                      ? Icons.remove_shopping_cart_outlined
                      : Icons.add_shopping_cart_outlined,
                  size: 14,
                  color: itemsCubit.isInCart.contains(widget.item)
                      ? Colors.red
                      : Color(0xff1C1B1F),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),

          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset('assets/images/TMG.png', height: 22, width: 15),
          ),
        ],
      ),
    );
  }
}
