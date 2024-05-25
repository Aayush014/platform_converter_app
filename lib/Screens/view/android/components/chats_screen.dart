import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../../../provider/list_provider.dart';


class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerTrue = Provider.of<AddListProvider>(context,listen: true);
    return Scaffold(
      body: Column(
        children: [
      ...List.generate(providerTrue.list.length, (index) =>
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: providerTrue.image != null ? FileImage(providerTrue.image!) : null,
                ),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(providerTrue.list[index].name,style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(providerTrue.list[index].chats),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${providerTrue.time.day}/${providerTrue.time.month}/${providerTrue.time.year}",
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "${providerTrue.Time.hour}:${providerTrue.Time.minute}",
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),



              ],
            ),
          ),),
        ],
      ),
    );
  }
}
