import 'package:flutter/material.dart';

import 'third_page.dart';

class BestSellerDisplay extends StatelessWidget {
  const BestSellerDisplay({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const ThirdPage();
            },
          ),
        );
      },
      child: Column(
        children: [
          Stack(
            alignment: const Alignment(0, 0.5),
            children: [
              Container(
                width: 114,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 10, 143, 209),
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.photo_library_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const Text(
                'Image Here',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 8),
              ),
            ],
          ),
          Container(
            width: 114,
            height: 45,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color.fromARGB(255, 232, 231, 231),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '  $text',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.star_outlined,
                        color: Color.fromARGB(255, 250, 188, 1), size: 10),
                    Icon(Icons.star_outlined,
                        color: Color.fromARGB(255, 250, 188, 1), size: 10),
                    Icon(Icons.star_outlined,
                        color: Color.fromARGB(255, 250, 188, 1), size: 10),
                    Icon(Icons.star_outlined,
                        color: Color.fromARGB(255, 250, 188, 1), size: 10),
                    Icon(Icons.star_outlined,
                        color: Color.fromARGB(255, 250, 188, 1), size: 10),
                    Text(
                      ' 5.0',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
