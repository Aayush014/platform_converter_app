import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/list_provider.dart';
import '../../../provider/profile_provider.dart';
import '../../../provider/theme_provider.dart';

class SettingScreenIos extends StatelessWidget {
  const SettingScreenIos({super.key});

  @override
  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddListProvider>(context, listen: true);
    final providerfalse = Provider.of<AddListProvider>(context, listen: false);

    return CupertinoPageScaffold(
        child: Column(
      children: [
        const SizedBox(height: 90,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            children: [
              const Icon(CupertinoIcons.person,size: 30,),
              const SizedBox(width: 10,),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Profile",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
                  Text("Update Profile Date",style: TextStyle(

                  ),),
                ],
              ),
              const Spacer(),
              CupertinoSwitch(value: Provider.of<ProfileProvider>(context).show, onChanged: (value) {
                Provider.of<ProfileProvider>(context,listen: false).showProfile(value);
              },)
            ],
          ),
        ),
        (Provider.of<ProfileProvider>(context).show)?Container(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: providertrue.image != null
                    ? FileImage(providertrue.image!)
                    : null,
                child: providertrue.image == null
                    ? const Icon(
                  CupertinoIcons.camera_on_rectangle,
                  size: 50,
                )
                    : null,
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CupertinoTextField(
                  controller: providertrue.txtname,
                  placeholder: "Name",
                  keyboardType: TextInputType.text,
                  prefix: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      CupertinoIcons.person_add,
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CupertinoColors.systemGrey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  style: const TextStyle(

                    fontSize: 18.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CupertinoTextField(
                  controller: providertrue.txtmsg,
                  placeholder: "Chat",
                  keyboardType: TextInputType.text,
                  prefix: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      CupertinoIcons.chat_bubble_text,
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CupertinoColors.systemGrey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  style: const TextStyle(

                    fontSize: 18.0,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CupertinoButton(

                      onPressed: () {

                  }, child: const Text("Save")),
                  CupertinoButton(onPressed: () {

                  }, child: const Text("Clear")),
                ],
              ),

          ],),

        ):Container(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            children: [
              const Icon(CupertinoIcons.moon,size: 30,),
              const SizedBox(width: 10,),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Theme",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
                  Text("Change Theme",style: TextStyle(

                  ),),
                ],
              ),
              const Spacer(),
              CupertinoSwitch(value: Provider.of<ThemeProvider>(context,listen: true).isDark, onChanged: (value) {
                Provider.of<ThemeProvider>(context,listen: false).theme(value);
              },)
            ],
          ),
        ),
      ],
    ));
  }
}
