import 'dart:io';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


import '../../../modal/addscreen_modal.dart';
import '../../../provider/list_provider.dart';

import 'text_fild_box.dart';

class AddContact extends StatelessWidget {
  AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddListProvider>(context, listen: true);
    final providerfalse = Provider.of<AddListProvider>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                providerfalse.addImage();
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: providertrue.image != null
                    ? FileImage(providertrue.image!)
                    : null,
                child: providertrue.image == null
                    ? const Icon(
                        Icons.camera_alt_outlined,
                        size: 50,
                      )
                    : null,
              ),
            ),
            TextFildBox(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2025))
                            .then((value) =>providerfalse.DatePicker(value));
                      },
                      icon: const Icon(
                        Icons.date_range,
                        size: 30,
                      )),
                  const Text(
                    "Select your Date",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Spacer(),
                  Text(
                    "${providertrue.time.day}/${providertrue.time.month}/${providertrue.time.year}",
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        showTimePicker(
                                context: context, initialTime: TimeOfDay.now())
                            .then((value) => providerfalse
                                .TimePicker(value));
                      },
                      icon: const Icon(
                        Icons.access_time_sharp,
                        size: 30,
                      )),
                  const Text(
                    "Select your Time",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Spacer(),
                  Text(
                    "${providertrue.Time.hour}:${providertrue.Time.minute}",
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
            TextButton(
                onPressed: () {
                  ListModal listModal = ListModal(
                      img: providertrue.image,
                      name: providertrue.txtname.text,
                      chats: providertrue.txtmsg.text,
                      number: providertrue.txtnumber.text,
                      timeOfDay:
                      providertrue.Time,
                      dateTime: providertrue.time);
                  providerfalse.addlist(listModal);
                },
                child: const Text("Save"))
          ],
        ),
      ),
    );
  }
}
