import 'package:flutter/material.dart';
import 'package:stock_manager/Types/special_enums.dart';

class StatsRecord {
  final DateTime date;
  final StatsVisibility visibility;
  final Map<String, StatsCity> orderRecords;
  final Map<String, StatsProduct> purchaseRecords;
  final Map<String, StatsSeller> sellerRecords;
  final double totalProfit;
  final double totalNetProfit;

  StatsRecord({
    required this.date,
    required this.visibility,
    required this.orderRecords,
    required this.purchaseRecords,
    required this.sellerRecords,
    required this.totalProfit,
    required this.totalNetProfit,
  });

  static StatsRecord defaultInstance(
      {required DateTime date, required StatsVisibility visibility}) {
    return StatsRecord(
      date: date,
      visibility: visibility,
      orderRecords: {},
      purchaseRecords: {},
      sellerRecords: {},
      totalProfit: 0,
      totalNetProfit: 0,
    );
  }
}

class ChartData {
  final num y;
  final num x;
  final Color? color;
  final String? name;

  ChartData({required this.y, required this.x, this.color, this.name});
}

class StatsRecordProduct {
  final DateTime date;
  final int statType = StatsType.topProducts.index;
  final Map<int, StatsProduct> productsStats;

  StatsRecordProduct(this.date, this.productsStats);
}

class StatsProduct {
  int totalQuantity;
  double profit;
  final String name;
  final String reference;

  StatsProduct({required this.totalQuantity,required this.profit, required this.name, required this.reference});
}

class StatsRecordSeller {
  final DateTime date;
  final Map<int, StatsSeller> sellersStats;
  final int statType = StatsType.topSellers.index;

  StatsRecordSeller(this.date, this.sellersStats);
}

class StatsSeller {
  final String code;
  final String name;
  int totalSold;

  StatsSeller({required this.code,required this.name,required this.totalSold});
}

class StatsRecordCity {
  final DateTime dateTime;
  final Map<int, StatsCity> stats;
  final int statType = StatsType.topStates.index;

  StatsRecordCity(this.dateTime, this.stats);
}

class StatsCity {
  final String name;
  final int count;
  final int postalCode;

  StatsCity(this.name, this.count, this.postalCode);
}

class RecordReportTotals {
  final double totalDeposit;
  final double totalRemainingPayement;
  final double totalProfit;
  final double totalNetProfit;

  RecordReportTotals(this.totalDeposit, this.totalRemainingPayement,
      this.totalProfit, this.totalNetProfit);
}


class OrderReportTotals {
  final double totalDeposit;
  final double totalRemainingPayement;
  final double totalProfit;
  final double totalNetProfit;
  final double shippingTotal;

  OrderReportTotals(this.totalDeposit, this.totalRemainingPayement,
      this.totalProfit, this.totalNetProfit, this.shippingTotal);
}