import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: HomePage(),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Snackbar
          ElevatedButton(
            child: const Text("Snackbar"),
            onPressed: () {
              showMySnackBar(context);
            },
          ),
          // Dialog
          ElevatedButton(
            child: const Text("Alart Dialog"),
            onPressed: () async {
              final CONFIRM_ACTION? action = await showMyAlart(context);
              if (action == CONFIRM_ACTION.ok) {
                print("IsOK");
              }
            },
          ),
        ],
      ),
    );
  }
}

enum CONFIRM_ACTION { ok, cancel }
Future<CONFIRM_ACTION?> showMyAlart(BuildContext context) {
  return showDialog<CONFIRM_ACTION>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("測試標題"),
        content: const Text("測試內容...."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(CONFIRM_ACTION.cancel);
            },
            child: const Text("取消"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(CONFIRM_ACTION.ok);
            },
            child: const Text("確定"),
          ),
        ],
      );
    },
  );
}

void showMySnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("我是 SnackBar😃....\n123123\njsl;jf\nasdfsdaf"),
      backgroundColor: Colors.blue[300],
      action: SnackBarAction(
        textColor: Colors.red,
        label: "復原",
        onPressed: () {
          print("do do");
        },
      ),
    ),
  );
}
