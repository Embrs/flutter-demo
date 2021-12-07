import 'dart:ffi';

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
              final ResObj? resObj = await showMyAlart(context);
              print("${resObj?.ans}:${resObj?.value}");
            },
          ),
        ],
      ),
    );
  }
}

enum CONFIRM_ACTION { ok, cancel }

class ResObj {
  CONFIRM_ACTION? ans;
  String? value;
}

Future<ResObj?> showMyAlart(BuildContext context) {
  var resObj = new ResObj();
  return showDialog<ResObj>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("測試標題"),
        content: Row(
          children: [
            Expanded(
              child: TextField(
                autofocus: true,
                decoration: const InputDecoration(
                  labelText: "測試可輸入資料對話視窗",
                  hintText: "請輸入資料...",
                ),
                onChanged: (value) {
                  resObj.value = value;
                },
              ),
            )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              resObj.ans = CONFIRM_ACTION.cancel;
              Navigator.of(context).pop(resObj);
            },
            child: const Text("取消"),
          ),
          ElevatedButton(
            onPressed: () {
              resObj.ans = CONFIRM_ACTION.ok;
              Navigator.of(context).pop(resObj);
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
