import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/widgets/offers_view_body.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/views/plans_view.dart';

class OffersView extends StatefulWidget {
  const OffersView({super.key});

  @override
  State<OffersView> createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
  int currentIndex = 4;

  static const Color _blueColor = Color(0xFF0062E2);

  final List<BottomNavigationBarItem> _baseItems = [
    BottomNavigationBarItem(
      label: 'حسابى',
      icon: Column(
        children: [
          const Icon(Icons.account_circle_outlined),
          Text(
            'حسابى',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xff84878F),
            ),
          ),
        ],
      ),
      activeIcon: const Icon(Icons.account_circle),
    ),
    BottomNavigationBarItem(
      label: 'أعلاناتى',
      icon: Column(
        children: [
          const Icon(Icons.dataset_outlined),
          Text(
            'أعلاناتى',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xff84878F),
            ),
          ),
        ],
      ),
      activeIcon: const Icon(Icons.dataset),
    ),
    BottomNavigationBarItem(
      label: 'أضف أعلان',
      icon: Column(
        children: [
          const Icon(Icons.add_box_outlined, color: _blueColor),
          Text(
            'أضف أعلان',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: _blueColor,
            ),
          ),
        ],
      ),
      activeIcon: const Icon(Icons.add_box),
    ),
    BottomNavigationBarItem(
      label: 'محادثة',
      icon: Column(
        children: [
          const Icon(Icons.chat_outlined),
          Text(
            'محادثة',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xff84878F),
            ),
          ),
        ],
      ),
      activeIcon: const Icon(Icons.chat),
    ),
    BottomNavigationBarItem(
      label: 'الرئيسية',
      icon: Column(
        children: [
          const Icon(Icons.bungalow_outlined),
          Text(
            'الرئيسية',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xff84878F),
            ),
          ),
        ],
      ),
      activeIcon: const Icon(Icons.bungalow),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
    if (currentIndex == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PlansView()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    final effectiveItems = isRtl ? _baseItems.reversed.toList() : _baseItems;

    final effectiveSelectedIndex = isRtl
        ? (effectiveItems.length - 1) - currentIndex
        : currentIndex;

    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: BottomNavigationBar(
          currentIndex: effectiveSelectedIndex,

          onTap: (index) {
            final tappedIndex = isRtl
                ? (effectiveItems.length - 1) - index
                : index;
            _onItemTapped(tappedIndex);
          },

          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xff090F1F),
          unselectedItemColor: const Color(0xff84878F),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xff84878F),
          ),
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xff090F1F),
          ),
          items: effectiveItems,
        ),
      ),
      body: const OffersViewBody(),
    );
  }
}
