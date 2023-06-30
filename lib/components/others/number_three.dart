import 'package:app/constants/sizes.dart';
import 'package:flutter/material.dart';

class ComponentThree extends StatefulWidget implements PreferredSizeWidget {
  const ComponentThree({super.key});

  @override
  State<ComponentThree> createState() => _ComponentThreeState();

  @override
  Size get preferredSize => const Size(double.maxFinite, 120);
}

class _ComponentThreeState extends State<ComponentThree> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              height: 30,
              clipBehavior: Clip.hardEdge,
              width: Sizes.screenWidth,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 214, 214, 214),
                      spreadRadius: 1,
                      blurRadius: 8,
                    ),
                  ]),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MenuText(
                    menuText: 'Chats',
                    selected: _selected == 0,
                    onPressed: () {
                      setState(() {
                        _selected = 0;
                      });
                    },
                  ),
                  MenuText(
                    menuText: 'Groups',
                    selected: _selected == 1,
                    onPressed: () {
                      setState(() {
                        _selected = 1;
                      });
                    },
                  ),
                  MenuText(
                    menuText: 'Calls',
                    selected: _selected == 2,
                    onPressed: () {
                      setState(() {
                        _selected = 2;
                      });
                    },
                  ),
                  MenuText(
                    menuText: 'Hightlights',
                    selected: _selected == 3,
                    onPressed: () {
                      setState(() {
                        _selected = 3;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class MenuText extends StatelessWidget {
  final String menuText;
  final bool selected;
  final VoidCallback onPressed;

  const MenuText({
    required this.menuText,
    required this.selected,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          foregroundColor: selected ? Colors.white : Colors.black,
          backgroundColor:
              selected ? const Color(0xFFF17B7B) : Colors.transparent,
          padding: const EdgeInsets.fromLTRB(26, 4, 26, 4),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        menuText,
        style: TextStyle(
          fontSize: Sizes.fontFourteen,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
