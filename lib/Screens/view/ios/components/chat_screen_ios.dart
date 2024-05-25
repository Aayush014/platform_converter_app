import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/list_provider.dart';

class ChatScreenIos extends StatelessWidget {
   ChatScreenIos({super.key});

  @override


  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddListProvider>(context,listen: true);
    final providerfalse = Provider.of<AddListProvider>(context,listen: false);
    return CupertinoPageScaffold(

        child: Column(
      children: [
        const SizedBox(height: 80,),

        ...List.generate(providertrue.list.length, (index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: providertrue.image != null
                        ? FileImage(providertrue.image!)
                        : null,
                    child: providertrue.image == null
                        ? const Icon(
                      CupertinoIcons.camera_on_rectangle,
                      size: 30,
                    )
                        : null,                  ),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(providertrue.list[index].name,style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text(providertrue.list[index].chats),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${providertrue.time.day}/${providertrue.time.month}/${providertrue.time.year}",
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        "${providertrue.Time.hour}:${providertrue.Time.minute}",
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),



                ],
              ),
            ),),
      ],
    ));
  }
}
