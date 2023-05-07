import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../dummy/chats.dart';

class ChatTabView extends StatelessWidget {
  const ChatTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
        });
  }
}
