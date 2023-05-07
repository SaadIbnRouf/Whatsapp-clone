import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final IconData icon;
  MyIconButton({required this.icon});
  // const MyIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
      ),
    );
  }
}
