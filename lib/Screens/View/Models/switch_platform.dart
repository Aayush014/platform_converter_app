
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/Screens/View/Android%20App/Home%20Screen/home_screen.dart';
import 'package:platform_converter_app/Screens/View/Cupertino%20App/Home%20Screen/home_screen.dart';
import 'package:provider/provider.dart';

import '../Provider/platform_provider.dart';


class SwitchPlatform extends StatelessWidget {
  const SwitchPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider.of<PlatformProvider>(context, listen: true).isSwitch
        ? MaterialApp(
      home: AndroidApp(),
    )
        : CupertinoApp(
      home: IOSApp(),
    );
  }
}