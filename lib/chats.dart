import 'package:flutter/material.dart';
import 'models/chat_list.dart';
import 'package:intl/intl.dart';

class Chats extends StatelessWidget {
  Chats({Key? key}) : super(key: key);
  var chats = [
    ChatList(
        contact: 'Baby Aunty',
        dateTime: DateTime.now(),
        lastMessage: 'Where is your mom?'),
    ChatList(
        contact: 'Ammu',
        lastMessage: 'Where is your mom?',
        dateTime: DateTime.now()),
    ChatList(
        contact: 'Atiq', lastMessage: 'How are you?', dateTime: DateTime.now()),
    ChatList(
        contact: 'Shawon',
        lastMessage: 'Iftar korbi baire?',
        dateTime: DateTime.now()),
    ChatList(
        contact: 'Didimony',
        lastMessage: 'Accha thik ase.',
        dateTime: DateTime.now()),
    ChatList(
        contact: 'Raisa',
        lastMessage: 'Basay asen taratari',
        dateTime: DateTime.now()),
    ChatList(
        contact: 'Office',
        lastMessage: 'Join in office meting.',
        dateTime: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
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
