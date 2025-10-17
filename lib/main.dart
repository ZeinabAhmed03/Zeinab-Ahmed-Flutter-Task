import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Filtering/view_model/kind%20filter%20cubit/kind_filter_cubit.dart';
import 'package:it_legend_task/features/Filtering/view_model/number%20of%20rooms%20filter%20cubit/number_of_rooms_filter_cubit.dart';
import 'package:it_legend_task/features/Filtering/view_model/payment%20methods%20filter%20cubit/payment_method_filter_cubit.dart';
import 'package:it_legend_task/features/Filtering/view_model/property%20condition%20filter%20cubit/property_condition_filter_cubit.dart';
import 'package:it_legend_task/features/Offers%20Page/presentation/views/offers_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Offers%20Page/view_model/Category%20Cubit/category_cubit.dart';
import 'package:it_legend_task/features/Offers%20Page/view_model/Items%20Cubit/items_cubit.dart';
import 'package:it_legend_task/features/Offers%20Page/view_model/Offers%20Cubit/offers_cubit.dart';
import 'package:it_legend_task/features/Plans%20Selected/view_model/basic%20plan/basic_plan_cubit.dart';
import 'package:it_legend_task/features/Plans%20Selected/view_model/extra%20plan/extra_plan_cubit.dart';
import 'package:it_legend_task/features/Plans%20Selected/view_model/plus%20&%20super%20plan/plus_super_cubit.dart';
import 'package:it_legend_task/simple_bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  runApp(const ItLegendTask());
}

class ItLegendTask extends StatelessWidget {
  const ItLegendTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CategoryCubit()..loadCategories()),
        BlocProvider(create: (context) => OffersCubit()..getOffers()),
        BlocProvider(create: (context) => ItemsCubit()..getItems()),

        BlocProvider(create: (context) => KindFilterCubit()..getKindFilter()),
        BlocProvider(
          create: (context) =>
              NumberOfRoomsFilterCubit()..getNumberOfRoomsFilter(),
        ),
        BlocProvider(
          create: (context) => PaymentMethodFilterCubit()..getPaymentMethods(),
        ),
        BlocProvider(
          create: (context) =>
              PropertyConditionFilterCubit()..getPropertyConditionsFilter(),
        ),
        BlocProvider(create: (context) => BasicPLanCubit()..getBasicPlan()),

        BlocProvider(create: (context) => ExtraPlanCubit()..getExtraPlan()),

        BlocProvider(create: (context) => PlusSuperCubit()..getPlusSuperPlan()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: ('Tajawal'),
          scaffoldBackgroundColor: Colors.white,
        ),
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        },
        home: const OffersView(),
      ),
    );
  }
}
