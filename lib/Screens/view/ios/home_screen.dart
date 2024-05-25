import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../provider/change_os.dart';
import 'components/screen_list.dart';

class CupertinoHomeScreen extends StatelessWidget {
  const CupertinoHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(

      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text("Platform Converter"),
          trailing: CupertinoSwitch(
            value: Provider.of<ChangeOs>(context, listen: true).isTrue,
            onChanged: (value) {
              Provider.of<ChangeOs>(context, listen: false).change(value);
            },
          ),
        ),
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_add), label: 'Person'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text), label: 'Chats'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone_arrow_up_right), label: 'Call'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings), label: 'Settings'),
          ]),
          tabBuilder: (context, index) {
            return screenlist[index];
          },
        ),
      ),
    );
  }
}
