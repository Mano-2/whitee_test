import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:white_test/common/colors.dart';
import 'package:white_test/screens/business_screen.dart';
import 'package:white_test/widgets/setting_button.dart';

import '../common/utils.dart';
import '../config/size_config.dart';
import 'home_screen.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen> {
  @override
  void initState() {
    super.initState();
    // used riverpod for state mangement to get the size
    ref.read(sizeConfigProvider);
  }

  var selectedIndex = 0;
  //done a pages list to make the bottomnavigationbar functional
  // business screen is empty screen for testing purposes
  var _pages = [HomeScreen(), BusinessScreen(), HomeScreen(), HomeScreen()];
  @override
  Widget build(BuildContext context) {
    final size = ref.watch(sizeConfigProvider);
    size.init(context);
    return Scaffold(
      // selected in the navigation bar
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          selectedItemColor: blueText,
          unselectedItemColor: blueText,
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dark_mode_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.slow_motion_video_outlined,
              ),
              label: 'My mix',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.contact_support_outlined,
              ),
              label: 'About us',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings',
            ),
          ]),
    );
  }
}
