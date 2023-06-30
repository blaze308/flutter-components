import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Let's Roll",
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
    );
  }
}
