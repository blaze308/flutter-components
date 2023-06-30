import 'package:flutter/material.dart';

class ComponentFour extends StatelessWidget {
  const ComponentFour({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      padding: const EdgeInsets.only(
        left: 10,
        // right: 10,
      ),
      width: screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1688051726~exp=1688052326~hmac=c80c43d4f9b13d9616a1094e963125b7cca014978eb63c7d86a7405624b26a09'),
              ),
              const SizedBox(width: 10),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.78,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Irma Flores',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '09:08pm',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 124, 124, 124)),
                              ),
                              Icon(Icons.keyboard_arrow_right,
                                  color: Color.fromARGB(255, 155, 155, 155)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.75,
                      child: const Text(
                        'This is the first phase or sentence of my chat that is hidden inside this...',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        softWrap: true,
                        style: TextStyle(
                            color: Color.fromARGB(255, 124, 124, 124)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.people_outline_outlined,
              color: Color.fromARGB(255, 155, 155, 155),
              size: 25,
            ),
          ),
          const SizedBox(height: 5),
          const MyDivider()
        ],
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
