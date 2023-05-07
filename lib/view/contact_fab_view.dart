import 'package:flutter/material.dart';
import '../dummy/contact_list.dart';
import 'package:whatsapp/custom_widgets/my_circle_avatar.dart';

class ContactFabView extends StatelessWidget {
  const ContactFabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: contact_list.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: MyCircleAvatar(icon: Icons.person_rounded),
              title: Text(contact_list[index].title),
              subtitle: Text(contact_list[index].status),
            );
          }),
    );
  }
}
