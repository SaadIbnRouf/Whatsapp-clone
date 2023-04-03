import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(1, 94, 83, 0.9),
        title: const Text('Select Contact'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          myTile('New group', Icons.group),
          myTile('New contact', Icons.person_add),
          myTile('New community', Icons.groups),
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

Widget contactTile() {
  return ListTile();
}
