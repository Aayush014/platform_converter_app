import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Provider/theme_provider.dart';
import '../../../provider/list_provider.dart';
import '../../../provider/profile_provider.dart';

class SettingScreen extends StatelessWidget {
   const SettingScreen({super.key});

  @override

  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddListProvider>(context, listen: true);
    final providerfalse = Provider.of<AddListProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              children: [
                const Icon(Icons.person,size: 30,),
                const SizedBox(width: 10,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Profile",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                    Text("Update Profile Date",style: TextStyle(

                    ),),
                  ],
                ),
                const Spacer(),
                Switch(value: Provider.of<ProfileProvider>(context).show, onChanged: (value) {
                  Provider.of<ProfileProvider>(context,listen: false).showProfile(value);
                },)
              ],
            ),
          ),
          (Provider.of<ProfileProvider>(context).show)?Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: providertrue.image != null ? FileImage(providertrue.image!) : null,

              ),
              const SizedBox(height: 10,),
              Container(
                height: 55,
                margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextField(
                  controller: providertrue.txtname,
                  decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Name",
                      icon: const Icon(
                        Icons.person,
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              Container(
                height: 55,
                margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextField(
                  controller: providertrue.txtmsg,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Message",
                      hintText: "Hello",
                      icon: const Icon(
                        Icons.message,
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {

                  }, child: const Text("Save")),
                  ElevatedButton(onPressed: () {

                  }, child: const Text("Clear")),
                ],
              ),
            ],
          ):Container(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              children: [
                const Icon(Icons.light_mode,size: 30,),
                const SizedBox(width: 10,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Theme",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                    Text("Change Theme",style: TextStyle(

                    ),),
                  ],
                ),
                const Spacer(),
                Switch(value: Provider.of<ThemeProvider>(context,listen: true).isDark, onChanged: (value) {
                  Provider.of<ThemeProvider>(context,listen: false).theme(value);
                },)
              ],
            ),
          ),

        ],
      ),
    );
  }
}
