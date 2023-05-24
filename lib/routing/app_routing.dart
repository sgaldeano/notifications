import 'package:flutter/material.dart';
import '../pages/pages.dart';

class AppRouting {

  static const String initialRoute = HomePage.routeName;

  static final Map<String, Widget Function(BuildContext context)> routes = {
    HomePage.routeName: (_) => const HomePage(),
    MessagePage.routeName: (_) => const MessagePage()
  };

}