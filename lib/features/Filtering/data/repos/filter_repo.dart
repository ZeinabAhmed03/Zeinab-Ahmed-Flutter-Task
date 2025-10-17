import 'dart:developer';

import 'package:it_legend_task/core/data_sources/local/app_db.dart';
import 'package:it_legend_task/features/Filtering/data/models/filter_model.dart';

class FilterRepo {
  final db = AppDb();
  final String kindTable = 'kind';
  final String roomsTable = 'numberOfRooms';
  final String paymentMethodsTable = 'paymentMethods';
  final String propertyConditionsTable = 'propertyConditions';

  Future<List<FilterModel>> getKindFilter() async {
    try {
      String sql = 'SELECT * FROM $kindTable';
      List<Map> rawData = await db.selectData(sql);
      return rawData
          .map((map) => FilterModel.fromMap(map as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<List<FilterModel>> getNumberOfRooms() async {
    try {
      String sql = 'SELECT * FROM $roomsTable';
      List<Map> rawData = await db.selectData(sql);
      return rawData
          .map((map) => FilterModel.fromMap(map as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<List<FilterModel>> getPaymentMethods() async {
    try {
      String sql = 'SELECT * FROM $paymentMethodsTable';
      List<Map> rawData = await db.selectData(sql);
      return rawData
          .map((map) => FilterModel.fromMap(map as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<List<FilterModel>> getpropertyConditions() async {
    try {
      String sql = 'SELECT * FROM $propertyConditionsTable';
      List<Map> rawData = await db.selectData(sql);
      return rawData
          .map((map) => FilterModel.fromMap(map as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<void> selectFilter(String tableName, int offerId) async {
    await db.setExclusiveSelection(tableName, offerId);
  }
}
