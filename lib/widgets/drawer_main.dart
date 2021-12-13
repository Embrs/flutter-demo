import 'package:demotest/pages/account_page.dart';
import 'package:demotest/pages/chat_page.dart';
import 'package:demotest/pages/home_page.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int _currentIndex = 0;
  final pages = [HomePage(), ChatPage(), AccountPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Harry Title"),
      ),
      body: pages[_currentIndex],
      drawer: Drawer(
          child: ListView(
        children: [
          // Account Header
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/eagle.gif"),
            ),
            accountName: Text("Harry"),
            accountEmail: Text("harry@gmail.com"),
          ),
          // home
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.home)),
            title: const Text("首頁"),
            onTap: () {
              _onItemClick(0);
              Navigator.of(context).pop();
            },
          ),
          // home
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.chat)),
            title: Text("聊天室"),
            onTap: () {
              _onItemClick(1);
              Navigator.of(context).pop();
            },
          ),
          // home
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.account_circle)),
            title: Text("會員資料"),
            onTap: () {
              _onItemClick(2);
              Navigator.of(context).pop();
            },
          ),
        ],
      )),
    );
  }

  void _onItemClick(int pageIndex) {
    setState(() {
      _currentIndex = pageIndex;
    });
  }
}
