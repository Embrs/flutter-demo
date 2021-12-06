import 'package:demotest/produce.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final Product? product;
  const AboutPage({Key? key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("name: ${product!.name}"),
          Text("desc: ${product!.desc}"),
          Text("price: ${product!.price}"),
          Text("stock: ${product!.stock}"),
        ],
      ),
    );
  }
}
