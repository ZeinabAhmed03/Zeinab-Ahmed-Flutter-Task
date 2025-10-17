import 'dart:developer';

import 'package:it_legend_task/core/data_sources/local/app_db.dart';
import 'package:it_legend_task/features/Offers%20Page/data/models/category_model.dart';

class CategoryRepo {
  final db = AppDb();
  final String tableName = 'categories';

  Future<List<CategoryModel>> getCategories() async {
    try {
      String sql = 'SELECT * FROM $tableName';
      List<Map> rawData = await db.selectData(sql);
      return rawData
          .map((map) => CategoryModel.fromMap(map as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
