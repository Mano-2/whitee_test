import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sizeConfigProvider = Provider((ref) => SizeConfig());

class SizeConfig {
  late MediaQueryData _mediaQueryData;
  late double width;
  late double height;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData.size.width;
    height = _mediaQueryData.size.height;
  }
}
