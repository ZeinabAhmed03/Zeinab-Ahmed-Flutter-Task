import 'package:bloc/bloc.dart';
import 'package:it_legend_task/features/Offers%20Page/data/models/category_model.dart';
import 'package:it_legend_task/features/Offers%20Page/data/repos/category_repo.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());

  final CategoryRepo categoryRepo = CategoryRepo();
  Future<void> loadCategories() async {
    emit(CategoryLoading());

    try {
      final categories = await categoryRepo.getCategories();

      emit(CategorySuccess(categories: categories));
    } catch (e) {
      emit(CategoryFailure(errMessage: e.toString()));
    }
  }
}
