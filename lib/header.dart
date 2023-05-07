import 'package:flutter/material.dart';
import 'package:whatsapp/calls_tab.dart';
import 'chat_tab.dart';
import 'status_tab.dart';
import 'custom_widgets/my_icon_button.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(1, 94, 83, 0.9),
          title: const Text(
            'Whatsapp',
          ),
          actions: [
            MyIconButton(icon: Icons.camera_alt),
            MyIconButton(icon: Icons.search),
            MyIconButton(icon: Icons.more_vert),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ChatTab(),
            StatusTab(),
            CallsTab(),
          ],
        ),
      ),
    );
  }
}
