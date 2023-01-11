import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:white_test/common/colors.dart';

import '../common/utils.dart';
import '../config/size_config.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen> {
  void initState() {
    super.initState();
    // "ref" can be used in all life-cycles of a StatefulWidget.
    ref.read(sizeConfigProvider);
  }

  @override
  Widget build(BuildContext context) {
    final size = ref.watch(sizeConfigProvider);
    size.init(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [colorGradient1, colorGradient2, colorGradient3],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: size.height / 23.15),
            child: Text(
              'Settings',
              style: getRegularTextStyle(
                  color: whiteText,
                  fontSize: 35,
                  height: size.height,
                  weight: FontWeight.w700),
            ),
          ),
        ]),
      ),
    );
  }
}
