import 'dart:developer';

import 'package:it_legend_task/core/data_sources/local/app_db.dart';
import 'package:it_legend_task/features/Offers%20Page/data/models/offer_model.dart';

class OfferRepo {
  final db = AppDb();
  final String tableName = 'offers';

  Future<List<OfferModel>> getOffers() async {
    try {
      String sql = 'SELECT * FROM $tableName';
      List<Map> rawData = await db.selectData(sql);
      return rawData
          .map((map) => OfferModel.fromMap(map as Map<String, dynamic>))
          .toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<void> selectOffer(int offerId) async {
    await db.setExclusiveSelection(tableName, offerId);
  }
}
