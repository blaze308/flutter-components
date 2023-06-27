import 'package:flutter/material.dart';

class NumberEleven extends StatelessWidget {
  const NumberEleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Type a message",
              prefixIcon: const Icon(Icons.mic, color: Colors.black),
              suffixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(Icons.attach_file, color: Colors.black),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        color: Color(0xffA1A1A1),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20))),
                    child: InkWell(
                      onTap: () {},
                      child:
                          const Icon(Icons.send, color: Colors.black, size: 35),
                    ),
                  )
                ],
              ),
              fillColor: Colors.white,
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
