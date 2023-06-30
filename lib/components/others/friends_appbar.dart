import 'package:app/components/others/number_one.dart';
import 'package:app/components/others/number_three.dart';
import 'package:app/components/others/number_two.dart';
import 'package:flutter/material.dart';

class FriendsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FriendsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child:
          Column(children: [ComponentOne(), ComponentTwo(), ComponentThree()]),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 160);
}
