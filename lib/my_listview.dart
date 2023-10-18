import 'package:flutter/material.dart';

import 'third_page.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0.5),
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const ThirdPage();
                },
              ),
            );
          },
          child: Container(
            width: 370,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 10, 143, 209),
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.photo_library_outlined,
              color: Colors.white,
              size: 70,
            ),
          ),
        ),
        const Text(
          'Image Here',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
