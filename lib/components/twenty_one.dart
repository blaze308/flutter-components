import 'package:flutter/material.dart';

class TwentyOne extends StatelessWidget {
  const TwentyOne({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60";

    return SizedBox(
      height: 100,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 30,
          ),
          const SizedBox(width: 20),
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Ronald Robertson",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 1),
            Text("Inquire from Customer: 15",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13)),
            SizedBox(height: 1),
            Text("MakersTrust Order: 26",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13)),
          ]),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(children: [
              Text("Today", style: TextStyle(fontWeight: FontWeight.w300)),
              SizedBox(width: 10),
              Icon(Icons.arrow_forward_ios, size: 13)
            ]),
          )
        ]),
      ),
    );
  }
}
