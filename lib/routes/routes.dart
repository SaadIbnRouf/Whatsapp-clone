import 'package:flutter/material.dart';
import '../header.dart';
import '../contact.dart';

class RouteManager {
  static const String homePage = '/';
  static const String contactPage = '/contactPage';

  static final Map<String, Widget Function(BuildContext)> routes = {
    homePage: (_) => const Header(),
    contactPage: (_) => const ContactPage(),
  };
}
