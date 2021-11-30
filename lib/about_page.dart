import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About")),
      body: _AboutPage(),
    );
  }
}

class _AboutPage extends StatelessWidget {
  const _AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Home"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
