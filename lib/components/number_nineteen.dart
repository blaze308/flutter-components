import 'package:flutter/material.dart';

class NumberNineteen extends StatelessWidget {
  const NumberNineteen({super.key});

  @override
  Widget build(BuildContext context) {
    String url =
        "https://images.unsplash.com/photo-1595341888016-a392ef81b7de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHNob2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60";
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 120,
        child: Container(
          padding: const EdgeInsets.only(bottom: 5),
          decoration:
              const BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(url, width: 110),
              const SizedBox(height: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 200,
                      child: Text(
                          "Fine looking jacket from Paco Rabane. Hottest trend for upcoming summer 2018.",
                          style: TextStyle(color: Colors.black, fontSize: 15))),
                  Text(
                    "GHC 890000000.95",
                    style: TextStyle(color: Color(0xff3B03DB)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
