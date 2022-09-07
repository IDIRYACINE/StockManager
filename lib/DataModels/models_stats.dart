import 'package:flutter/material.dart';
import 'package:stock_manager/Types/special_enums.dart';

class StatsRecord {
  final DateTime date;
  final StatsVisibility visibility;
  final Map<int, StatsCity> cityRecords;
  final Map<int, StatsProduct> productRecords;
  final Map<int, StatsSeller> customerRecords;
  final double totalProfit;
  final double totalNetProfit;

  StatsRecord({
    required this.date,
    required this.visibility,
    required this.cityRecords,
    required this.productRecords,
    required this.customerRecords,
    required this.totalProfit,
    required this.totalNetProfit,
  });

  static StatsRecord defaultInstance(
      {required DateTime date, required StatsVisibility visibility}) {
    return StatsRecord(
      date: date,
      visibility: visibility,
      cityRecords: {},
      productRecords: {},
      customerRecords: {},
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
  final int quantity;
  final double totalAmount;
  final String name;
  final int referenceHash;

  StatsProduct(this.quantity, this.totalAmount, this.name, this.referenceHash);
}

class StatsRecordSeller {
  final DateTime date;
  final Map<int, StatsSeller> sellersStats;
  final int statType = StatsType.topSellers.index;

  StatsRecordSeller(this.date, this.sellersStats);
}

class StatsSeller {
  final int sellerCode;
  final String name;
  final int totalSold;

  StatsSeller(this.sellerCode, this.name, this.totalSold);
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
