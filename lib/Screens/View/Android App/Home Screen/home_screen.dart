import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/Screens/View/Android%20App/Home%20Screen/components/Add%20New%20User/new_user.dart';
import 'package:platform_converter_app/Utils/global.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: CupertinoColors.white,
        appBar: AppBar(
          title: const Text(
            "Platform Converter",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: CupertinoColors.white),
          ),
          backgroundColor: Colors.black,
          bottom: const TabBar(
              labelColor: Colors.white,
              isScrollable: false,
              labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              indicatorWeight: 4,
              indicatorColor: CupertinoColors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              dividerHeight: 0,
              tabs: [
                Tab(
                  icon: Icon(
                    CupertinoIcons.person_add,
                    size: 30,

                  ),
                ),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Calls",
                ),
                Tab(
                  text: "Settings",
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            AddNewUser(),
            const Text("tabs"),
            Text("$tabs"),
            const Text("tabs"),
          ],
        ),
      ),
    );
  }
}

List<String> tabs = [
  "1",
  "2",
  "3",
  "4",
];
