import 'package:bloc/bloc.dart';
import 'package:it_legend_task/features/Filtering/data/models/filter_model.dart';
import 'package:it_legend_task/features/Filtering/data/repos/filter_repo.dart';
import 'package:meta/meta.dart';

part 'payment_mehtod_filter_state.dart';

class PaymentMethodFilterCubit extends Cubit<PaymentMethodsFilterState> {
  PaymentMethodFilterCubit() : super(PaymentMethodsFilterInitial());
  final FilterRepo filterRepo = FilterRepo();

  Future<void> getPaymentMethods() async {
    emit(PaymentMethodsFilterLoading());
    try {
      final paymentMethods = await filterRepo.getPaymentMethods();
      emit(PaymentMethodsFilterSuccess(paymentMethodsFilter: paymentMethods));
    } catch (e) {
      emit(PaymentMethodsFilterFailure(errMessage: e.toString()));
    }
  }

  Future<void> onFilterTapped(String tableName, int offerId) async {
    try {
      await filterRepo.selectFilter(tableName, offerId);

      await getPaymentMethods();
    } catch (e) {
      emit(PaymentMethodsFilterFailure(errMessage: e.toString()));
    }
  }
}
