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
      child: ElevatedButton(
        child: const Text("Snackbar"),
        onPressed: () {
          showMySnackBar(context);
        },
      ),
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
}
