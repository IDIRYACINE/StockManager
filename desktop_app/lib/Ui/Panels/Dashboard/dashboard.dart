import 'package:flutter/material.dart';

import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/Ui/Panels/Dashboard/stats.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class DashboardPanel extends StatelessWidget {
  const DashboardPanel({Key? key}) : super(key: key);

  final int topSellersCount = 3;
  final int topProductsCount = 3;
  final int topStatesCounts = 3;

  String getSellerName(int index) {
    return "";
  }

  String getStateName(int index) {
    return "statsModel.state(index).name";
  }

  List<ChartData> buildTopProductsChartData(List<StatsProduct> topProducts) {
    final List<ChartData> chartData = [];
    for (int i = 0; i < topProductsCount; i++) {
      final StatsProduct product = topProducts[i];

      chartData.add(ChartData(x: i, name: product.name, y: product.profit));
    }
    return chartData;
  }

  int getSellersCount() {
    return 0;
  }

  int getStatesCount() {
    return 0;
  }

  List<ChartData> productsStats(List<StatsProduct> productStats, maxDisplay) {
    List<ChartData> chartData = [];
    int count = 0;
    maxDisplay =
        maxDisplay > productStats.length ? productStats.length : maxDisplay;

    for (StatsProduct stat in productStats) {
      chartData
          .add(ChartData(x: count, y: stat.totalQuantity, name: stat.name));
      count++;
    }

    return chartData;
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Flexible(
          child: Column(
            children: [
              const Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: ProfitCard(),
                ),
              ),
              Flexible(
                child: Card(
                  child: TopList(
                    title: Translations.of(context)!.topSellers,
                    builder: (context, index) => TopListItem(
                      index: index,
                      title: getSellerName(index),
                    ),
                    itemsCount: getSellersCount(),
                  ),
                ),
              )
            ],
          ),
        ),
        Flexible(
          child: Column(
            children: [
              Flexible(
                child: Card(
                  child: TopList(
                    builder: (context, index) => TopListItem(
                      index: index,
                      title: getStateName(index),
                    ),
                    itemsCount: getStatesCount(),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  child: TopBarChart(
                    chartTitle: Translations.of(context)!.topProducts,
                    chartData: productsStats([],5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
