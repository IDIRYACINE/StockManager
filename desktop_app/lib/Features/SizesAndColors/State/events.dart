import 'package:stock_manager/Domain/Models/sizes_colors.dart';

class SizeColorEvent{}

class AddModelSize extends SizeColorEvent{
  final ModelSize modelSize;

  AddModelSize(this.modelSize);
}

class AddModelColor extends SizeColorEvent{
  final ModelColor modelColor;

  AddModelColor(this.modelColor);
}

class RemoveModelSize extends SizeColorEvent{
  final ModelSize modelSize;

  RemoveModelSize(this.modelSize);
}

class RemoveModelColor extends SizeColorEvent{
  final ModelColor modelColor;

  RemoveModelColor(this.modelColor);
}

class EditModelSize extends SizeColorEvent{
  final ModelSize modelSize;

  EditModelSize(this.modelSize);
}

class EditModelColor extends SizeColorEvent{
  final ModelColor modelColor;

  EditModelColor(this.modelColor);
}

