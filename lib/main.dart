import 'package:demotest/pages/account_page.dart';
import 'package:demotest/pages/chat_page.dart';
import 'package:demotest/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'widgets/drawer_main.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final pages = [HomePage(), ChatPage(), AccountPage()];
  @override
  Widget build(BuildContext context) {
    return DrawerMenu();
  }
}
