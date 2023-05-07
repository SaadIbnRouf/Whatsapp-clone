import 'package:flutter/material.dart';
import 'view/calls_tab_view.dart';
import 'routes/routes.dart';

class CallsTab extends StatelessWidget {
  CallsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.pushNamed(context, RouteManager.httpApi);
        },
        child: const Icon(Icons.add_call),
      ),
      body: const CallsTabView(),
    );
  }
}
