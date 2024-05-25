import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Screens/provider/change_os.dart';
import '../Screens/view/android/home_screen.dart';
import '../Screens/view/ios/home_screen.dart';


class AdaptiveScreen extends StatelessWidget {
  const AdaptiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider.of<ChangeOs>(context, listen: true).isTrue
        ? const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
          )
        : const CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoHomeScreen(),
          );
  }
}
