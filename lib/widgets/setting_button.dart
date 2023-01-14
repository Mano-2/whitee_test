import 'package:flutter/material.dart';

import '../common/colors.dart';
import '../common/utils.dart';
import '../config/size_config.dart';

class SettingButton extends StatelessWidget {
  final String text;

  final VoidCallback onPressed;
  const SettingButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.size,
  });

  final SizeConfig size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35, right: 35),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Container(
          height: size.height / 15.43,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  '$text',
                  style: getBoldTextStyle(
                    color: blueText,
                    fontSize: 20,
                    height: size.height,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 26),
                child: Icon(
                  Icons.chevron_right,
                  color: blueText,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: containerWhite,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
