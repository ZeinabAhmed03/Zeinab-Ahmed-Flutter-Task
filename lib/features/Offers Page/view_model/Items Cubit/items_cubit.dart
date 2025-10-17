import 'package:bloc/bloc.dart';
import 'package:it_legend_task/features/Offers%20Page/data/models/item_model.dart';
import 'package:it_legend_task/features/Offers%20Page/data/repos/item_repo.dart';
import 'package:meta/meta.dart';

part 'items_state.dart';

class ItemsCubit extends Cubit<ItemsState> {
  ItemsCubit() : super(ItemsInitial());
  final ItemRepo itemRepo = ItemRepo();
  final List<ItemModel> isInCart = [];
  final List<ItemModel> isFavorite = [];
  Future<void> getItems() async {
    emit(ItemsLoading());
    try {
      final items = await itemRepo.getItems();
      emit(ItemsSuccess(items: items));
    } catch (e) {
      emit(ItemsFailure(errMessage: e.toString()));
    }
  }
}
