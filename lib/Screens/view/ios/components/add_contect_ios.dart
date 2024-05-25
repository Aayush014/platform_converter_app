import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../modal/addscreen_modal.dart';
import '../../../provider/list_provider.dart';

class AddScreenios extends StatelessWidget {
  const AddScreenios({super.key});

  @override
  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddListProvider>(context, listen: true);
    final providerfalse = Provider.of<AddListProvider>(context, listen: false);

    return CupertinoPageScaffold(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 150, 0, 0),
          child: GestureDetector(
            onTap: () {
              providerfalse.addImage();
            },
            child: CircleAvatar(
              radius: 60,
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
          ),
        ),
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
            controller: providertrue.txtnumber,
            placeholder: "7410852963",
            keyboardType: TextInputType.text,
            prefix: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.phone,
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
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Icon(CupertinoIcons.calendar),
                  CupertinoButton(
                    child: Text(
                      providertrue.dateTime== null
                          ? "Pick Date"
                          : "${providertrue.dateTime.day}-${providertrue.dateTime.month}-${providertrue.dateTime.year}",
                    ),
                    onPressed: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context) => Container(
                          height: 200,
                          color: CupertinoColors.white,
                          child: CupertinoDatePicker(
                            onDateTimeChanged: (value) {
                              providerfalse.DatePicker(value);
                            },
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Icon(CupertinoIcons.time),
                  CupertinoButton(
                    child: Text(
                      providertrue.timeOfDay == null
                          ? "Pick Time"
                          : "${providertrue.timeOfDay.hour}:${providertrue.timeOfDay.minute}",
                    ),
                    onPressed: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context) => Container(
                          height: 200,
                          color: CupertinoColors.white,
                          child: CupertinoTimerPicker(
                            onTimerDurationChanged: (value) {
                              providerfalse.TimePicker(value);
                            },
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
        CupertinoButton(
          child: const Text("Save"),
          onPressed: () {
            ListModal listmodal = ListModal(
                img: providertrue.image,
                name: providertrue.txtname.text,
                chats: providertrue.txtmsg.text,
                number: providertrue.txtnumber.text,
                timeOfDay: providertrue.Time,
                dateTime: providertrue.time);
            providerfalse.addlist(listmodal);
          },
        )
      ]),
    ));
  }
}
