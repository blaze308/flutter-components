import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String imageUrl;
  final String username;
  final String email;

  const CustomAppBar({
    super.key,
    required this.imageUrl,
    required this.username,
    required this.email,
  });

  //usage
  // appBar: AppBar(
  //     toolbarHeight: 90,
  //     flexibleSpace: CustomAppBar(
  //       email: "johhnywatson",
  //       imageUrl: imageUrl,
  //       username: "Johnny Watson",
  //     ),
  //   ));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: const EdgeInsets.only(top: 5),
          height: 90,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(Icons.arrow_back, size: 22),
                          const SizedBox(width: 10),
                          CircleAvatar(
                              backgroundImage: NetworkImage(imageUrl),
                              radius: 18),
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(username,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                        ]),
                    const Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(Icons.search, size: 30),
                          SizedBox(width: 10),
                          badges.Badge(
                              badgeContent: Text("3",
                                  style: TextStyle(color: Colors.white)),
                              badgeStyle: badges.BadgeStyle(
                                  badgeColor: Color(0xffEB5757)),
                              child: Icon(Icons.monetization_on_outlined,
                                  size: 27)),
                          SizedBox(width: 10),
                          Icon(Icons.more_vert, size: 27)
                        ]),
                  ]),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      email,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xff8C8981).withOpacity(0.9)),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: follow(),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(90, 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: const Color(0xffC4C4C4)),
                      child: const Text(
                        "FOLLOW",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}

follow() {
  print("follow");
}
