import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../provider/list_provider.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddListProvider>(context, listen: true);
    final providerfalse = Provider.of<AddListProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          ...List.generate(
              providertrue.list.length,
              (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: providertrue.image != null
                              ? FileImage(providertrue.image!)
                              : null,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              providertrue.list[index].name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(providertrue.list[index].chats),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.call,
                          size: 30,
                        ),
                      ],
                    ),
                  ))
        ],
      ),
    );
  }
}
