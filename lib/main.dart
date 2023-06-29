import 'package:app/components/number_eleven.dart';
import 'package:app/components/number_five.dart';
import 'package:app/components/number_nineteen.dart';
import 'package:app/components/number_six.dart';
import 'package:app/components/number_seven.dart';
import 'package:app/components/number_twenty_five.dart';
import 'package:app/components/number_twenty_one.dart';
import 'package:app/pages/friends_chat.dart';
import 'package:flutter/material.dart';
import 'components/number_fourteen.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
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
    return Scaffold(
      body: FriendsChat(),
    );
  }
}
