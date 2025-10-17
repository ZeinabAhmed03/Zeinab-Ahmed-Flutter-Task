import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/customs/custom_filter_Section.dart';
import 'package:it_legend_task/features/Filtering/view_model/payment%20methods%20filter%20cubit/payment_method_filter_cubit.dart';

class PaymentMethodSection extends StatelessWidget {
  const PaymentMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentMethodFilterCubit, PaymentMethodsFilterState>(
      builder: (context, state) {
        if (state is PaymentMethodsFilterLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is PaymentMethodsFilterSuccess) {
          final paymentMethods = state.paymentMethodsFilter;
          return CustomFilterSection(
            filter: paymentMethods,
            sectionTitle: 'طريقة الدفع',
            tableName: 'paymentMethods',
          );
        } else if (state is PaymentMethodsFilterFailure) {
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
