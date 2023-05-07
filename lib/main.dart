import 'package:flutter/material.dart';
import 'header.dart';
import 'routes/routes.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(1, 94, 83, 0.8),
      ),
      title: 'Flutter App',
      initialRoute: RouteManager.homePage,
      routes: RouteManager.routes,
    );
  }
}
