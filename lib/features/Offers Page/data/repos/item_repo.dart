import 'dart:developer';
import 'package:it_legend_task/core/data_sources/local/app_db.dart';
import 'package:it_legend_task/features/Offers%20Page/data/models/item_model.dart';

class ItemRepo {
  final db = AppDb();
  final String tableName = 'items';

  Future<List<ItemModel>> getItems() async {
    try {
      String selectSql = 'SELECT * FROM $tableName';
      List<Map> rawData = await db.selectData(selectSql);
      return rawData
          .map((map) => ItemModel.fromMap(map as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
