import 'package:flutter/material.dart';
import '../view/contact_fab_view.dart';
import 'custom_widgets/my_icon_button.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(1, 94, 83, 0.9),
        title: const Text('Select Contact'),
        actions: [
          MyIconButton(icon: Icons.search),
          MyIconButton(icon: Icons.more_vert),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myTile('New group', Icons.group),
          myTile('New contact', Icons.person_add),
          myTile('New community', Icons.groups),
          singleLineText('Contacts on WhatsApp'),
          const ContactFabView(),
        ],
      ),
    );
  }
}

Widget myTile(String title, IconData icon) {
  return ListTile(
    onTap: () {},
    leading: CircleAvatar(
      backgroundColor: const Color.fromRGBO(1, 94, 83, 0.8),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    ),
    title: Text(
      title,
    ),
  );
}

Widget singleLineText(String text) {
  return Container(
    margin: EdgeInsets.only(left: 10.0),
    padding: EdgeInsets.all(10.0),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.blueGrey,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
