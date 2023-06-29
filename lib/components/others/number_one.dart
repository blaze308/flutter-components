import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ComponentOne extends StatelessWidget implements PreferredSizeWidget {
  const ComponentOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFFD500F9),
                      Color(0xFFFF1744),
                    ]),
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    'NA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Let\'s Roll',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
                    color: Color(0xFF5F5F5F),
                    size: 27,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 20,
                  child: badges.Badge(
                    badgeContent: const Text(
                      '3',
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                      ),
                    ),
                    badgeStyle:
                        const badges.BadgeStyle(badgeColor: Color(0xFFEB5757)),
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.request_page_outlined,
                        color: Colors.black,
                        size: 27,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                    size: 27,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 70);
}
