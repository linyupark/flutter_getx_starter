import 'package:flutter/material.dart';

class DepsDemoAPage extends StatelessWidget {
  DepsDemoAPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page A'),
      ),
      body: Center(
        child: Text('Page A'),
      ),
    );
  }
}
