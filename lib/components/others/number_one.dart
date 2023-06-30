import 'package:app/constants/sizes.dart';
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
                  child: Text(
                    'NA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Sizes.fontTwenty,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Let\'s Roll',
                  style: TextStyle(
                    fontSize: Sizes.fontTwenty,
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
                  child: Icon(
                    Icons.search,
                    color: Color(0xFF5F5F5F),
                    size: Sizes.iconSearch,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 20,
                  child: badges.Badge(
                    badgeContent: Text(
                      '3',
                      style: TextStyle(
                        fontSize: Sizes.fontEight,
                        color: Colors.white,
                      ),
                    ),
                    badgeStyle:
                        const badges.BadgeStyle(badgeColor: Color(0xFFEB5757)),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.request_page_outlined,
                        color: Colors.black,
                        size: Sizes.iconRequestPage,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                    size: Sizes.iconMoreVert,
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
