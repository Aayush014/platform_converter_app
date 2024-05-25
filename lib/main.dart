import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/Provider/theme_provider.dart';
import 'Screens/provider/change_os.dart';
import 'Screens/provider/list_provider.dart';
import 'Screens/provider/profile_provider.dart';
import 'Utils/os_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => ProfileProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => AddListProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ChangeOs(),
      ),
    ],
    builder:(context, child) =>  const AdaptiveScreen());
  }
}
