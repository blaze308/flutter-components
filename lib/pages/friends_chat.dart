import 'package:app/components/number_five.dart';
import 'package:app/components/number_six.dart';
import 'package:app/components/number_twenty_five.dart';
import 'package:app/components/others/appbar.dart';
import 'package:app/components/others/friends_appbar.dart';
import 'package:app/components/others/number_four.dart';
import 'package:app/components/others/number_one.dart';
import 'package:app/components/others/number_two.dart';
import 'package:app/components/others/numero_four.dart';
import 'package:flutter/material.dart';

class FriendsChat extends StatefulWidget {
  const FriendsChat({super.key});

  @override
  State<FriendsChat> createState() => _FriendsChatState();
}

class _FriendsChatState extends State<FriendsChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FriendsAppBar(),
      body: ListView(
        children: const [
          NumeroFour(),
          NumberFive(),
          NumberFive(),
          NumberFive(),
          NumberFive(),
          NumberFive(),
          NumberFive(),
          NumberFive(),
          NumberFive(),
          NumberFive(),
          NumberFive(),
        ],
      ),
      floatingActionButton: NumberSix(),
      bottomNavigationBar: NumberTwentyFive(),
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Divider(thickness: 2, height: 0));
  }
}
