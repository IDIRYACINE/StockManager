import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Domain/Models/region.dart';
import 'package:stock_manager/Features/Cities/feature.dart';
import 'package:stock_manager/DataModels/special_enums.dart';
import 'package:stock_manager/Ui/Generics/table_row.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class CitiesTable extends StatelessWidget {
  const CitiesTable({Key? key}) : super(key: key);

  List<String> cityToCellsAdapter(City city) {
    return [city.cityId.toString(), city.cityName];
  }

  void handleContextMenu(
      SelectableRowDetaills rowDetaills, CitiesController controller) {
    switch (rowDetaills.operation) {
      case ContextMenuOperation.remove:
        controller.remove(rowDetaills.context, rowDetaills.data);
        break;
      case ContextMenuOperation.edit:
        controller.edit(
            rowDetaills.context, rowDetaills.data, rowDetaills.rowIndex);
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<RegionBloc>(context);
    CitiesController controller = CitiesController(bloc);

    List<String> citiesTableColumns = [
      Translations.of(context)!.id,
      Translations.of(context)!.city,
    ];

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Measures.small,
        child: Column(
          children: [
            SelectableRow(
              textColor: Colors.grey,
              dataCellHelper: (index) => citiesTableColumns,
              index: -1,
              dataModel: 0,
            ),
            Expanded(
              child: BlocBuilder<RegionBloc, RegionState>(builder: (
                context,
                state,
              ) {
                return ListView.builder(
                    itemCount: state.citiesCount,
                    itemBuilder: (context, index) {
                      return SelectableRow<City>(
                        dataCellHelper: cityToCellsAdapter,
                        onClick: (detaills) =>
                            handleContextMenu(detaills, controller),
                        contextMenuItems: const [
                          ContextMenuOperation.edit,
                          ContextMenuOperation.remove
                        ],
                        index: index,
                        dataModel: state.city(index),
                      );
                    });
              }),
            ),
          ],
        ),
      ),
    );
  }
}
