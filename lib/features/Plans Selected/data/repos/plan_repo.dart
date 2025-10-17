import 'dart:developer';

import 'package:it_legend_task/core/data_sources/local/app_db.dart';
import 'package:it_legend_task/features/Plans%20Selected/data/models/plan_model.dart';

class PlanRepo {
  final db = AppDb();
  final String basicPlanTable = 'basicPlan';
  final String extraPlanTable = 'extraPlan';
  final String plusSuperPlanTable = 'pLusSuperPlan';

  Future<List<PlanModel>> getBasicPlan() async {
    try {
      String sql = 'SELECT * FROM $basicPlanTable';
      List<Map> rawData = await db.selectData(sql);
      return rawData
          .map((map) => PlanModel.fromMap(map as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<List<PlanModel>> getExtraPlan() async {
    try {
      String sql = 'SELECT * FROM $extraPlanTable';
      List<Map> rawData = await db.selectData(sql);
      return rawData
          .map((map) => PlanModel.fromMap(map as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<List<PlanModel>> getPlusSuperPlan() async {
    try {
      String sql = 'SELECT * FROM $plusSuperPlanTable';
      List<Map> rawData = await db.selectData(sql);
      return rawData
          .map((map) => PlanModel.fromMap(map as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
