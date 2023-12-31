import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class NumberSix extends StatelessWidget {
  const NumberSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 55,
          width: 55,
          child: FittedBox(
            child: badges.Badge(
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
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          width: 50,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: const Color(0xffEFC737),
              onPressed: () {},
              child: const Icon(Icons.swap_horiz, size: 40),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 40,
          width: 40,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xffF80000),
              child: const Icon(Icons.add, size: 40, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
