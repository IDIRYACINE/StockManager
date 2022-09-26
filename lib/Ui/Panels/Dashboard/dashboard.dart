import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/sellers.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stats.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/Ui/Panels/Dashboard/stats.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class DashboardPanel extends StatelessWidget {
  const DashboardPanel({Key? key}) : super(key: key);

  final int topSellersCount = 3;
  final int topProductsCount = 3;
  final int topStatesCounts = 3;

  String getSellerName(SellersLiveDataModel sellersModel, int index) {
    return sellersModel.seller(index).name;
  }

  String getStateName(StatsLiveDataModel statsModel, int index) {
    return statsModel.state(index).name;
  }

  List<ChartData> buildTopProductsChartData(StatsLiveDataModel statsModel) {
    final List<ChartData> chartData = [];
    for (int i = 0; i < topProductsCount; i++) {
      final StatsProduct product = statsModel.topProductAt(i);

      chartData
          .add(ChartData(x: i, name: product.name, y: product.profit));
    }
    return chartData;
  }

  int getSellersCount(SellersLiveDataModel sellersModel) {
    return sellersModel.sellersCount < topSellersCount
        ? sellersModel.sellersCount
        : topSellersCount;
  }


  int getStatesCount(StatsLiveDataModel statsModel) {
    return statsModel.cityStats.length < topStatesCounts
        ? statsModel.cityStats.length
        : topStatesCounts;
  }
  

  @override
  Widget build(BuildContext context) {
    ControllersProvider controllersProvider =
        Provider.of<ControllersProvider>(context, listen: false);

    return Row(
      children: [
        Flexible(
          child: Column(
            children: [
              const Expanded(child: ProfitCard()),
              Flexible(
                child: Card(
                  child: TopList(
                    title: Translations.of(context)!.topSellers,
                    builder: (context, index) => TopListItem(
                      index: index,
                      title: getSellerName(
                          controllersProvider.sellersLiveModel, index),
                    ),
                    itemsCount: getSellersCount(controllersProvider.sellersLiveModel),
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
                      title:
                          getStateName(controllersProvider.statsLiveModel, index),
                    ),
                    itemsCount: getStatesCount(controllersProvider.statsLiveModel),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  child: TopBarChart(
                    chartTitle: Translations.of(context)!.topProducts,
                    chartData: const [],
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
