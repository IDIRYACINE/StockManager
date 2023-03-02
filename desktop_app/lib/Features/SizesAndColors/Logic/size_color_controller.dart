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

  void editColor(BuildContext context, ModelColor modelColor, int rowIndex) {
    void onEdit(Map<String, dynamic> updatedField, ModelColor modelColor) {
      bloc.add(UpdateModelColor(modelColor));
      AppNavigator.pop(context);
    }

    PopupsUtility.displayGenericPopup(
      context,
      ModelColorEditor(
        modelColor: modelColor.copyWith(),
        editMode: true,
        editCallback: onEdit,
        confirmLabel: Translations.of(context)!.update,
      ),
    );
  }

  void removeColor(BuildContext context, ModelColor data) {
    void onRemove() {
      bloc.add(DeleteModelColor(data));
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
          onConfirm: onRemove,
          message: Translations.of(context)!.messageDeleteElement,
        ),
      ),
    );
  }

  void removeSize(BuildContext context, ModelSize data) {
    void onRemove() {
      bloc.add(DeleteModelSize(data));
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ConfirmDialog(
          onConfirm: onRemove,
          message: Translations.of(context)!.messageDeleteElement,
        ),
      ),
    );

  }

  void editSize(BuildContext context, ModelSize data, int rowIndex) {

    void onEdit(Map<String, dynamic> updatedField, ModelSize modelSize) {
      bloc.add(UpdateModelSize(modelSize));
      AppNavigator.pop(context);
    }

    PopupsUtility.displayGenericPopup(
      context,
      ModelSizeEditor(
        modelSize: data.copyWith(),
        editMode: true,
        editCallback: onEdit,
        confirmLabel: Translations.of(context)!.update,
      ),
    );
  }

  void refreshColors() {
    bloc.add(RefreshModelColors());
  }

  void refreshSizes() {
    bloc.add(RefreshModelSizes());
  }
}
