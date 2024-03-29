import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Statistiques/State/statistiques.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProfitCard extends StatefulWidget {
  const ProfitCard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfitCardState();
}

class _ProfitCardState extends State<ProfitCard> {
  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: Measures.small,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            Translations.of(context)!.profit,
            style:
                const TextStyle(fontSize: Measures.h1TextSize, color: Colors.white),
          ),
          BlocBuilder<StatistiquesBloc,StatistiquesState>(
              builder: (context, state) {
                return Text(
                  state.totalPrice.toString(),
                  style: const TextStyle(
                      fontSize: Measures.h1TextSize, color: Colors.white),
                );
              }),
        ],
      ),
    );
  }
}

class TopBarChart extends StatefulWidget {
  const TopBarChart({Key? key, required this.chartData, this.chartTitle})
      : super(key: key);

  final List<ChartData> chartData;
  final String? chartTitle;

  @override
  State<StatefulWidget> createState() => _TopBarChartState();
}

class _TopBarChartState extends State<TopBarChart> {
  bool get displayChartTitle => widget.chartTitle != null;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: displayChartTitle ? ChartTitle(text: widget.chartTitle!) : null,
      series: <ChartSeries<ChartData, int>>[
        ColumnSeries<ChartData, int>(
          dataSource: widget.chartData,
          xValueMapper: (ChartData data, int index) => index,
          yValueMapper: (ChartData data, int index) => data.y,
          dataLabelMapper: (ChartData data, int index) => data.name,
        )
      ],
    );
  }
}

class BarChart extends StatefulWidget {
  const BarChart({Key? key, required this.chartData, this.chartTitle})
      : super(key: key);

  final List<ChartData> chartData;
  final String? chartTitle;

  @override
  State<StatefulWidget> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  bool get displayChartTitle => widget.chartTitle != null;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: displayChartTitle ? ChartTitle(text: widget.chartTitle!) : null,
      series: <ChartSeries<ChartData, int>>[
        ColumnSeries<ChartData, int>(
          dataSource: widget.chartData,
          xValueMapper: (ChartData data, int index) => index,
          yValueMapper: (ChartData data, int index) => data.y,
          dataLabelMapper: (ChartData data, int index) => data.name,
        )
      ],
    );
  }
}

class PieChart extends StatefulWidget {
  const PieChart({Key? key, required this.chartData, this.chartTitle})
      : super(key: key);

  final List<ChartData> chartData;
  final String? chartTitle;

  @override
  State<StatefulWidget> createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      series: <CircularSeries>[
        PieSeries<ChartData, int>(
          dataSource: widget.chartData,
          xValueMapper: (ChartData data, int index) => index,
          yValueMapper: (ChartData data, int index) => data.y,
          dataLabelMapper: (ChartData data, int index) => data.name,
        )
      ],
    );
  }
}

class TopList<T> extends StatefulWidget {
  const TopList({
    Key? key,
    this.title,
    required this.builder,
    required this.itemsCount,
  }) : super(key: key);

  final String? title;
  final ItemBuilder builder;
  final int itemsCount;

  @override
  State<StatefulWidget> createState() => _TopListState();
}

class _TopListState extends State<TopList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.title != null)
          Text(
            widget.title!,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: Colors.white),
          ),
        for (var i = 0; i < widget.itemsCount; i++)
          Expanded(child: widget.builder(context, i)),
      ],
    );
  }
}

class TopListItem extends StatelessWidget {
  const TopListItem(
      {Key? key, required this.index, required this.title, this.leading})
      : super(key: key);

  final int index;
  final String title;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading ?? Text(index.toString()),
      title: Text(title),
    );
  }
}
