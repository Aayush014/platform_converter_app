import 'package:flutter/material.dart';
import 'package:platform_converter_app/Screens/View/Models/switch_platform.dart';
import 'package:platform_converter_app/Screens/View/Provider/platform_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PlatformProvider(),
        )
      ],
      builder: (context, child) =>  MaterialApp(
        theme: ThemeData.dark(),
        home: const SwitchPlatform(),
      ),
    );
  }
}
