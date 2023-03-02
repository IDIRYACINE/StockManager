import 'package:flutter/material.dart';
import 'package:stock_manager/Application/Utility/navigator.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Features/SizesAndColors/Ui/color_editor.dart';
import 'package:stock_manager/Features/SizesAndColors/Ui/size_editor.dart';
import 'package:stock_manager/Features/SizesAndColors/feature.dart';
import 'package:stock_manager/Ui/Components/Dialogs/generic_popup.dart';
import 'package:stock_manager/l10n/generated/app_translations.dart';

class SizeColorController {
  SizeColorController(this.bloc);

  final SizeColorBloc bloc;

  void addColor(BuildContext context) {
    void onConfirm(ModelColor modelColor) {
      bloc.add(AddModelColor(modelColor));

      AppNavigator.pop(context);
    }

    PopupsUtility.displayGenericPopup(
      context,
      ModelColorEditor(
        createCallback: onConfirm,
        confirmLabel: Translations.of(context)!.add,
        modelColor: ModelColor.defaultInstance(),
      ),
    );
  }

  void addSize(BuildContext context) {
    void onConfirm(ModelSize modelSize) {
      bloc.add(AddModelSize(modelSize));

      AppNavigator.pop(context);
    }

    PopupsUtility.displayGenericPopup(
      context,
      ModelSizeEditor(
        createCallback: onConfirm,
        confirmLabel: Translations.of(context)!.add,
        modelSize: ModelSize.defaultInstance(),
      ),
    );
  }

  void editColor(BuildContext context, ModelColor data, int rowIndex) {}

  void removeColor(BuildContext context, ModelColor data) {}

  void removeSize(BuildContext context, ModelSize data) {}

  void editSize(BuildContext context, ModelSize data, int rowIndex) {}

  void refreshColors() {}

  void refreshSizes() {}
}
