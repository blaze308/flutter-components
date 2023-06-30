import 'package:app/components/others/number_one.dart';
import 'package:app/components/others/number_two.dart';
import 'package:flutter/material.dart';

class AppBarLetsRoll extends StatelessWidget implements PreferredSizeWidget {
  const AppBarLetsRoll({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(children: [ComponentOne(), ComponentTwo()]),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 120);
}
