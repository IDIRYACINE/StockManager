
import 'package:stock_manager/Domain/Models/sizes_colors.dart';

class SizeColorState{
  final List<ModelColor> colors;
  final List<ModelSize> sizes;

  SizeColorState({required this.colors,required this.sizes});


  factory SizeColorState.initial() {
    return SizeColorState(
      colors: [],
      sizes: [],
    );
  }

  get colorsCount => colors.length;


  SizeColorState copyWith({List<ModelColor>? colors, List<ModelSize>? sizes}){
    return SizeColorState(
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  ModelColor getColorAtIndex(int index){
    return colors[index].copyWith();
  }

  ModelSize getSizeAtIndex(int index){
    return sizes[index].copyWith();
  }

}