import 'package:flutter/material.dart';
import 'package:mini_mart_project/third_page.dart';


class ExploreList extends StatelessWidget {
  const ExploreList({
    super.key, required this.text
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const ThirdPage();
                              },
                            ),
                          );
        },
        child: Stack(
          
          children: [
            Container(
              width: double.infinity,
              height: 160,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Color.fromARGB(255, 10, 143, 209),
              ),
              alignment: Alignment.center,
              child: const Icon(
                Icons.photo_library_outlined,
                color: Colors.white,
                size: 70,
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0, 0.3),
              child: Text(
                'Image Here',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
             Positioned(
              bottom: 10,
              left: 10,
              child:  Text(
                text,
                style: const TextStyle(fontSize: 18, fontFamily: 'Roboto',fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
