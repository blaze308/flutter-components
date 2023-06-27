import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class NumberFourteen extends StatelessWidget {
  const NumberFourteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
                padding: EdgeInsets.all(10),
                badgeColor: Color(0xff545454),
                borderSide: BorderSide(color: Color(0xffAC9647), width: 2)),
            badgeContent: const Text("3",
                style: TextStyle(fontSize: 18, color: Colors.white)),
            child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: const Color(0xffCD0303),
                child: const Icon(Icons.local_fire_department, size: 40)),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: const Color(0xffEFC737),
            onPressed: () {},
            child: const Icon(Icons.swap_horiz, size: 40),
          ),
        ],
      ),
    );
  }
}
