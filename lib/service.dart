import 'dart:developer';
import 'markets.dart';

Future<List<String>> marketItems(Market market) async {
  log("call marketItems");

  await Future.delayed(const Duration(seconds: 2));
  if (market == Market.blueMarket) {
    return [
      "Tereyağı",
      "Kefir",
      "Yumurta",
    ];
  } else if (market == Market.greenMarket) {
    return [
      "Marul",
      "Domates",
    ];
  }
  return [];
}
