import 'package:flutter/material.dart';
import 'view/chat_tab_view.dart';
import 'routes/routes.dart';

class ChatTab extends StatelessWidget {
  ChatTab({Key? key}) : super(key: key);

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
      body: ChatTabView(),
    );
  }
}
