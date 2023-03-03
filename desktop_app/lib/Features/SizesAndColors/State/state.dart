import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Types/i_wrappers.dart';

class SizeColorState {
  final List<ModelColor> colors;
  final List<ModelSize> sizes;

  SizeColorState({required this.colors, required this.sizes});

  factory SizeColorState.initial() {
    return SizeColorState(
      colors: [],
      sizes: [],
    );
  }

  get colorsCount => colors.length;

  get sizesCount => sizes.length;

  SizeColorState copyWith({List<ModelColor>? colors, List<ModelSize>? sizes}) {
    return SizeColorState(
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  ModelColor getColorAtIndex(int index) {
    return colors[index].copyWith();
  }

  ModelSize getSizeAtIndex(int index) {
    return sizes[index].copyWith();
  }

  List<ModelColor> replaceColor(UpdateRequestWrapper<ModelColor> modelColor) {
    final newColors = colors.map((e) {
      if (e.colorId == modelColor.instance.colorId) {
        return modelColor.instance;
      }
      return e.copyWith();
    }).toList();

    return newColors;
  }

  List<ModelSize> replaceSize(UpdateRequestWrapper<ModelSize> modelSize) {
    final newSizes = sizes.map((e) {
      if (e.sizeId == modelSize.instance.sizeId) {
        return modelSize.instance;
      }
      return e.copyWith();
    }).toList();

    return newSizes;
  }
}
