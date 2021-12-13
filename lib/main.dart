import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${0.1 + 0.2}")),
      body: GridDemo(),
    );
  }
}

class GridDemo extends StatelessWidget {
  GridDemo({Key? key}) : super(key: key);
  final List<Product> listItems = List<Product>.generate(
    500,
    (index) => Product(
        name: "測試資料 $index",
        price: "商品價格 $index",
        icon: const Icon(Icons.attach_money)),
  );
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listItems.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => Center(
        child: Text("${listItems[index].name}"),
      ),
    );
  }
}

class Product {
  final String? name;
  final String? price;
  final Icon? icon;

  Product({this.name, this.price, this.icon});
}
