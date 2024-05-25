
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/list_provider.dart';

Column TextFildBox(BuildContext context) {
  final providertrue = Provider.of<AddListProvider>(context,listen: true);
  final providerfalse = Provider.of<AddListProvider>(context,listen: false);
  return Column(
    children: [
      Container(
        height: 55,
        margin: const EdgeInsets.all(20),
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
        margin: const EdgeInsets.all(20),
        child: TextField(
          controller: providertrue.txtnumber,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Number",
              hintText: "7145859564",
              icon: const Icon(
                Icons.call,
                size: 30,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ),
      Container(
        height: 55,
        margin: const EdgeInsets.all(20),

        child: TextField(
          controller: providertrue.txtmsg,
          decoration: InputDecoration(
              labelText: "Message",
              hintText: "Your Message",
              icon: const Icon(
                Icons.message,
                size: 30,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ),
    ],
  );
}