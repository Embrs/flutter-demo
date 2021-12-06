import 'package:demotest/produce.dart';
import 'package:flutter/material.dart';
import 'about_page.dart';

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
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final Product product =
      Product(name: "我是商品名稱", desc: "我是商品描述", price: 999999, stock: 66);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("to About"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutPage(product: product),
            ),
          );
        },
      ),
    );
  }
}
