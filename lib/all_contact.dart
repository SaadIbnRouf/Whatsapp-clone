import 'package:flutter/material.dart';
import 'package:whatsapp/models/chats.dart';
import 'models/contactModel.dart';
import 'models/contact_list.dart';

class AllContact extends StatelessWidget {
  const AllContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: contact_list.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.person_rounded,
                  color: Colors.white,
                ),
              ),
              title: Text(contact_list[index].title),
              subtitle: Text(contact_list[index].status),
            );
          }),
    );
  }
}
