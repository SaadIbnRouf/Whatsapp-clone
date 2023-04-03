import 'package:flutter/material.dart';
import 'models/chats.dart';
import 'package:intl/intl.dart';
import 'routes/routes.dart';

class Chats extends StatelessWidget {
  Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.pushNamed(context, RouteManager.contactPage);
        },
        child: const Icon(Icons.chat_rounded),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.person_rounded,
                  color: Colors.white,
                ),
              ),
              title: Text(chats[index].contact),
              subtitle: Text(chats[index].lastMessage),
              trailing: Text(
                DateFormat.jm().format(chats[index].dateTime),
              ),
            );
          }),
    );
  }
}
