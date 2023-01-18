import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:white_test/common/colors.dart';
import 'package:white_test/widgets/setting_button.dart';

import '../common/utils.dart';
import '../config/size_config.dart';

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = ref.read(sizeConfigProvider);

    return Container(
      height: double.infinity,
      width: double.infinity,
      //linear gradient for the background color
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [colorGradient1, colorGradient2, colorGradient3],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      // Column containing the widgets of the page
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
          padding:
              EdgeInsets.only(top: size.height / 40, bottom: size.height / 25),
          child: Text(
            'White Noises',
            style: getLeckerliOneTextStyle(
                color: whiteText, fontSize: 52, height: size.height),
          ),
        ),
        //container containing the picture and text
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
        //Settings buttons widget
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
      ]),
    );
  }
}
