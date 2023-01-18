import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// empty screen for buttombarnavigator test
class BusinessScreen extends ConsumerStatefulWidget {
  const BusinessScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends ConsumerState<BusinessScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 59,
      height: 60,
      color: Colors.black,
    );
  }
}
