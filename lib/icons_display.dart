import 'package:flutter/material.dart';
import 'package:mini_mart_project/third_page.dart';



class IconsDisplay extends StatelessWidget {
  const IconsDisplay({
    super.key,
    required this.icons,
    required this.text,
  });
  final IconData icons;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 232, 231, 231),
          ),
          padding: const EdgeInsets.all(4),
          alignment: Alignment.center,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const ThirdPage();
                  },
                ),
              );
            },
            icon: Icon(
              icons,
              color: Colors.blue,
              size: 28,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
