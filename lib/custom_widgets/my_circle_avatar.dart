import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  final IconData icon;
  // MyCircleAvatar({required this.icon});
  const MyCircleAvatar({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color.fromRGBO(1, 94, 83, 1),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
