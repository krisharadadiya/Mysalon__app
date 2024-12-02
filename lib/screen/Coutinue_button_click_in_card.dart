import 'package:flutter/material.dart';

class CoutinueButtonClickInCard extends StatelessWidget {
  const CoutinueButtonClickInCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        'countine',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 60),
      )),
    );
  }
}
