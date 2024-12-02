import 'package:flutter/material.dart';

class CardtoScreen extends StatelessWidget {
  const CardtoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        'hello',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
