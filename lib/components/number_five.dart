import 'package:flutter/material.dart';

class NumberFive extends StatelessWidget {
  const NumberFive({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60";
    return ListView(children: [
      ChatComponent(imageUrl: imageUrl),
      const MyDivider(),
      // ChatComponent(imageUrl: imageUrl),
      // const MyDivider(),
      // ChatComponent(imageUrl: imageUrl),
      // const MyDivider(),
      // ChatComponent(imageUrl: imageUrl),
      // const MyDivider(),
      // ChatComponent(imageUrl: imageUrl),
      // const MyDivider(),
      // ChatComponent(imageUrl: imageUrl),
      // const MyDivider(),
      // ChatComponent(imageUrl: imageUrl),
      // const MyDivider(),
      // ChatComponent(imageUrl: imageUrl),
      // const MyDivider(),
      // ChatComponent(imageUrl: imageUrl),
      // const MyDivider(),
      // ChatComponent(imageUrl: imageUrl),
      // const MyDivider(),
      // ChatComponent(imageUrl: imageUrl),
      // const MyDivider(),
      // ChatComponent(imageUrl: imageUrl),
    ]);
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

class ChatComponent extends StatelessWidget {
  const ChatComponent({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
                radius: 30,
              ),
              const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ronald Robertson",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    SizedBox(
                      width: 210,
                      child: Text(
                          "This is the first phrase or sentence of my chat that is hidden inside this section",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 13)),
                    ),
                  ]),
              const Row(children: [
                Text("Today", style: TextStyle(fontWeight: FontWeight.w300)),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios, size: 13)
              ])
            ]),
      ),
    );
  }
}
