import 'package:flutter/material.dart';

class NumberTwentyFive extends StatefulWidget {
  const NumberTwentyFive({super.key});

  @override
  State<NumberTwentyFive> createState() => _NumberTwentyFiveState();
}

class _NumberTwentyFiveState extends State<NumberTwentyFive> {
  int _selected = 2;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 20,
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, size: 35),
            ),
          ),
          const SizedBox(width: 1),
          Expanded(
            child: IconButtomBar(
              text: "TechSpace",
              selected: _selected == 0,
              onTap: () {
                setState(() {
                  _selected = 0;
                });
              },
            ),
          ),
          const SizedBox(width: 1),
          IconButtomBar(
            text: "DWTA",
            selected: _selected == 1,
            onTap: () {
              setState(() {
                _selected = 1;
              });
            },
          ),
          const SizedBox(width: 1),
          IconButtomBar(
            text: "LetsRoll",
            selected: _selected == 2,
            onTap: () {
              setState(() {
                _selected = 2;
              });
            },
          ),
        ],
      ),
    );
  }
}

class IconButtomBar extends StatelessWidget {
  final bool selected;
  final String text;
  final VoidCallback onTap;

  const IconButtomBar({
    super.key,
    required this.selected,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 2,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            width: 100,
            height: 56,
            decoration: BoxDecoration(
                color: selected ? Colors.blue : Colors.white,
                border: const Border(
                  left: BorderSide(width: 0.3, color: Colors.grey),
                  right: BorderSide(width: 0.3, color: Colors.grey),
                )),
            child: SizedBox(
              width: 70,
              height: 56,
              child: Center(
                  child: Text(
                text,
                style: TextStyle(
                    fontSize: 18,
                    color: selected ? Colors.white : Colors.black),
              )),
            )),
      ),
    );
  }
}

class LetsRollWidget extends StatelessWidget {
  const LetsRollWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
                left: BorderSide(width: 0.3, color: Colors.grey),
                right: BorderSide(width: 0.3, color: Colors.grey))),
        width: 100,
        height: 56,
        child: const Center(
            child: Text(
          "LetsRoll",
          style: TextStyle(color: Colors.black, fontSize: 18),
        )),
      ),
    );
  }
}

class DWTAWidget extends StatelessWidget {
  const DWTAWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
                left: BorderSide(width: 0.3, color: Colors.grey),
                right: BorderSide(width: 0.3, color: Colors.grey))),
        width: 100,
        height: 56,
        child: const Center(
          child: Text(
            "DWTA",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
    );
  }
}

class TechSpaceWidget extends StatelessWidget {
  const TechSpaceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
              border: Border(
                  left: BorderSide(width: 0.3, color: Colors.grey),
                  right: BorderSide(width: 0.3, color: Colors.grey))),
          width: 100,
          height: 56,
          child: const Center(
            child: Text(
              "TechSpace",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: IconButton(
          icon: const Center(child: Icon(Icons.menu)),
          onPressed: () {},
          iconSize: 35),
    );
  }
}
