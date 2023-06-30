import 'dart:math' as math;
import 'package:app/constants/sizes.dart';
import 'package:flutter/material.dart';

class ComponentTwo extends StatefulWidget {
  const ComponentTwo({super.key});

  @override
  State<ComponentTwo> createState() => _ComponentTwoState();
}

class _ComponentTwoState extends State<ComponentTwo> {
  int _selected = 1;
  @override
  Widget build(BuildContext context) {
    return Stack(
        //width: 500,
        alignment: Alignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              height: 20,
              child: Center(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 43,
                    ),
                    SubNavText(
                      text: 'FRIENDS',
                      selected: _selected == 0,
                      onTap: () {
                        setState(() {
                          _selected = 0;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    SubNavText(
                      text: 'PROVIDERS',
                      selected: _selected == 1,
                      onTap: () {
                        setState(() {
                          _selected = 1;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    SubNavText(
                      text: 'MY CUSTOMERS',
                      selected: _selected == 2,
                      onTap: () {
                        setState(() {
                          _selected = 2;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 43,
                    ),
                  ],
                ),
              )),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SideIcons(
                  borderRadTopRight: 40,
                  borderRadBottomRight: 40,
                  degRotation: 35.73 * math.pi / 180,
                  marRight: 10,
                  icon: Icons.videogame_asset,
                  onTap: null,
                  iconSize: 23),
              SideIcons(
                  borderRadTopLeft: 40,
                  borderRadBottomLeft: 40,
                  marLeft: 10,
                  icon: Icons.fact_check,
                  degRotation: -8 * math.pi / 180,
                  onTap: null,
                  iconSize: 20),
            ],
          ),
        ]);
  }
}

class SubNavText extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

  const SubNavText({
    Key? key,
    required this.text,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
              colors: [
                selected ? const Color(0xFFD42222) : const Color(0xFF6C92F4),
                selected ? const Color(0xFFF17B7B) : const Color(0xFF1A73E9),
              ],
            ).createShader(bounds),
        child: InkWell(
          onTap: onTap,
          child: Text(
            text,
            style: TextStyle(
              fontSize: Sizes.fontSixteen,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
  }
}

class SideIcons extends StatelessWidget {
  final double? borderRadTopRight;
  final double? borderRadBottomRight;
  final double? borderRadTopLeft;
  final double? borderRadBottomLeft;
  final IconData icon;
  final double iconSize;
  final double? degRotation;
  final double? marLeft;
  final double? marRight;
  final VoidCallback? onTap;

  const SideIcons({
    this.borderRadTopRight,
    this.borderRadBottomRight,
    this.borderRadTopLeft,
    this.borderRadBottomLeft,
    required this.icon,
    required this.iconSize,
    this.degRotation,
    this.marLeft,
    this.marRight,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 35,
        margin: EdgeInsets.fromLTRB(marLeft ?? 0, 0, marRight ?? 0, 0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(borderRadTopRight ?? 0),
            bottomRight: Radius.circular(borderRadBottomRight ?? 0),
            topLeft: Radius.circular(borderRadTopLeft ?? 0),
            bottomLeft: Radius.circular(borderRadTopLeft ?? 0),
          ),
          border: Border.all(
            width: 2,
            color: const Color(0xFFF0EBEB),
          ),
        ),
        child: Center(
          child: Transform.rotate(
              angle: degRotation ?? 180 * math.pi / 180,
              child: Icon(
                icon,
                color: const Color(0xFF5A5A5A),
                size: iconSize,
              )),
        ),
      ),
    );
  }
}
