import 'package:flutter/material.dart';

class NumberFive extends StatelessWidget {
  const NumberFive({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60";
    return SizedBox(
      height: 100,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
                    Text("Today",
                        style: TextStyle(fontWeight: FontWeight.w300)),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios, size: 13)
                  ])
                ]),
            const MyDivider()
          ],
        ),
      ),
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
        child: Divider(
          thickness: 0.8,
          height: 0,
          color: Colors.black54,
        ));
  }
}
