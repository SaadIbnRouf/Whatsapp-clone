import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'chats.dart';
import 'status.dart';

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
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
              ),
            ),
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
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
