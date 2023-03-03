import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Types/i_wrappers.dart';

class SizeColorEvent {}

class AddModelSize extends SizeColorEvent {
  final ModelSize modelSize;

  AddModelSize(this.modelSize);
}

class AddModelColor extends SizeColorEvent {
  final ModelColor modelColor;

  AddModelColor(this.modelColor);
}

class DeleteModelSize extends SizeColorEvent {
  final ModelSize modelSize;

  DeleteModelSize(this.modelSize);
}

class DeleteModelColor extends SizeColorEvent {
  final ModelColor modelColor;

  DeleteModelColor(this.modelColor);
}

class UpdateModelSize extends SizeColorEvent {
  final UpdateRequestWrapper<ModelSize> modelSize;

  UpdateModelSize(this.modelSize);
}

class UpdateModelColor extends SizeColorEvent {
  final UpdateRequestWrapper<ModelColor> modelColor;

  UpdateModelColor(this.modelColor);
}

class RefreshModelColors extends SizeColorEvent {}

class LoadModelColors extends SizeColorEvent {
  final List<ModelColor> colors;

  LoadModelColors(this.colors);
}

class RefreshModelSizes extends SizeColorEvent {}

class LoadModelSizes extends SizeColorEvent {
  final List<ModelSize> sizes;

  LoadModelSizes(this.sizes);

}
