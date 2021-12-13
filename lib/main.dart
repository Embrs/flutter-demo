import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${0.1 + 0.2}")),
      body: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  ListViewDemo({Key? key}) : super(key: key);
  final List<Product> listItems = List<Product>.generate(
    500,
    (index) => Product(
        name: "測試資料 $index",
        price: "商品價格 $index",
        icon: const Icon(Icons.attach_money)),
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: listItems[index].icon,
            title: Text("${listItems[index].name}"),
            subtitle: Text("${listItems[index].price}"),
          );
        },
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
