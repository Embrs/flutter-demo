import 'package:demotest/pages/account_page.dart';
import 'package:demotest/pages/chat_page.dart';
import 'package:demotest/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final List<Tab> myTabs = <Tab>[
    const Tab(text: "Home"),
    const Tab(text: "Chat"),
    const Tab(text: "Account"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("is title"),
            bottom: TabBar(tabs: myTabs),
          ),
          body: const TabBarView(
            children: [HomePage(), ChatPage(), AccountPage()],
          ),
        ),
      ),
    );
  }
}
