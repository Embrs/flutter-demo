import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Harry Title")),
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        // 對齊
        // alignment: Alignment.bottomRight,

        children: [
          Container(
            color: Colors.amber,
            child: const Text("111", style: TextStyle(fontSize: 100)),
          ),
          Positioned(
            child: Container(
              color: Colors.red,
              child: const Text("222", style: TextStyle(fontSize: 50)),
            ),
            top: 10,
            left: 10,
          )
        ],
      ),
    );
  }
}
