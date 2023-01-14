import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:white_test/common/colors.dart';
import 'package:white_test/widgets/setting_button.dart';

import '../common/utils.dart';
import '../config/size_config.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen> {
  @override
  void initState() {
    super.initState();

    ref.read(sizeConfigProvider);
  }

  @override
  Widget build(BuildContext context) {
    final size = ref.watch(sizeConfigProvider);
    size.init(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
              style: getBoldTextStyle(
                  color: whiteText, fontSize: 35, height: size.height),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.height / 40, bottom: size.height / 25),
            child: Text(
              'White Noises',
              style: getLeckerliOneTextStyle(
                  color: whiteText, fontSize: 52, height: size.height),
            ),
          ),
          Container(
            height: size.height / 3.5,
            decoration: const BoxDecoration(
              color: containerWhite,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height / 61.7,
                      left: 44,
                      right: 44,
                      bottom: size.height / 57.8),
                  child: Image.asset(
                    "assets/images/sleepy.png",
                    height: size.height / 5.2,
                    width: size.height / 3.43,
                  ),
                ),
                Text(
                  'Upgrade to VIP ',
                  style: getBoldTextStyle(
                      color: blueText, fontSize: 30, height: size.height),
                ),
                SizedBox(
                  height: size.height / 92.6,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height / 23.15,
              bottom: size.height / 92.6,
            ),
            child: SettingButton(
                size: size,
                onPressed: () {/*Navigate to the fade duration*/},
                text: 'Fade Duration'),
          ),
          SettingButton(
              size: size,
              onPressed: () {/*Navigate to the feedbacks*/},
              text: 'FeedBack'),
          Padding(
            padding: EdgeInsets.only(
              top: size.height / 92.6,
              bottom: size.height / 92.6,
            ),
            child: SettingButton(
                size: size,
                onPressed: () {/*Navigate to the Rating page*/},
                text: 'Rate'),
          ),
          SettingButton(
              size: size,
              onPressed: () {/*Navigate to the Privacy policy page*/},
              text: 'Privacy Policy'),
          const SizedBox(
            height: 12.18,
          ),
          Container(
            color: containerWhite,
            height: size.height / 12.5,
          )
        ]),
      ),
    );
  }
}
