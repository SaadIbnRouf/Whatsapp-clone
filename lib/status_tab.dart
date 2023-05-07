import 'package:flutter/material.dart';
import 'view/status_tab_view.dart';

class StatusTab extends StatelessWidget {
  const StatusTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.camera_alt_rounded),
      ),
      body: const StatusTabView(),
    );
  }
}
