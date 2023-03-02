import 'package:stock_manager/Domain/Models/sizes_colors.dart';

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
  final ModelSize modelSize;

  UpdateModelSize(this.modelSize);
}

class UpdateModelColor extends SizeColorEvent {
  final ModelColor modelColor;

  UpdateModelColor(this.modelColor);
}

class RefreshModelColors extends SizeColorEvent {}

class LoadModelColors extends SizeColorEvent {}

class RefreshModelSizes extends SizeColorEvent {}

class LoadModelSizes extends SizeColorEvent {}
