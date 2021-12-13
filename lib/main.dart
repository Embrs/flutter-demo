import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${0.1 + 0.2}")),
      body: Demo(),
    );
  }
}

class Demo extends StatelessWidget {
  Demo({Key? key}) : super(key: key);
  final List<Widget> list = [
    const ListTile(
      leading: Icon(Icons.event_available, color: Colors.blue),
      title: Text(
        "Test List 1",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
      subtitle: Text("Test List 1"),
    ),
    const ListTile(
      leading: Icon(Icons.event_available, color: Colors.blue),
      title: Text(
        "Test List 2",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
      subtitle: Text("Test List 1"),
    ),
    const ListTile(
      leading: Icon(Icons.event_available, color: Colors.blue),
      title: Text(
        "Test List 3",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
      subtitle: Text("Test List 1"),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      children: list,
    ));
  }
}
