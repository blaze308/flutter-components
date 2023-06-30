import 'dart:ui';

import 'package:app/components/others/friends_appbar.dart';
import 'package:app/constants/colors.dart';
import 'package:app/constants/sizes.dart';
import 'package:app/constants/widgets/app_title.dart';
import 'package:app/pages/friends_chat.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String imageUrl =
      "https://images.unsplash.com/photo-1619895862022-09114b41f16f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    // print("height: ${Sizes.screenHeight}");
    // print(Sizes.screenWidth);
    print(Sizes.fontTwenty);
    return Scaffold(
      body: FriendsChat(),
    );
  }
}
