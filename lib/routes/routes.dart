import 'package:flutter/material.dart';
import '../header.dart';
import '../contact.dart';
import 'package:whatsapp/models/http_api_model.dart';

class RouteManager {
  static const String homePage = '/';
  static const String contactPage = '/contactPage';
  static const String httpApi = '/httpApi';

  static final Map<String, Widget Function(BuildContext)> routes = {
    homePage: (_) => const Header(),
    contactPage: (_) => const ContactPage(),
    httpApi: (_) => HttpApiModel(),
  };
}
