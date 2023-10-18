import 'package:flutter/material.dart';
import 'package:mini_mart_project/color_selection.dart';
import 'package:mini_mart_project/size_selection.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 2, 47, 83),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 129, 193, 246),
                              radius: 18,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.arrow_back_ios_sharp,
                                    color: Color.fromARGB(255, 2, 47, 83),
                                    size: 20),
                              ),
                            ),
                            const CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 129, 193, 246),
                              radius: 18,
                              child: Icon(
                                Icons.bookmark,
                                color: Color.fromARGB(255, 2, 47, 83),
                                size: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Center(
                        child: Column(
                          children: [
                            Icon(Icons.photo_library_outlined,
                                color: Colors.white, size: 100),
                            Text(
                              'Image Here',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  bottom: -50,
                  right: 30,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.orange,
                    child: Text(
                      '\$125',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    'Zaed\'s Store',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                '\nI am using this texts as items placeholder for my Mini Mart demo app.'
                ' My store is a work in progress with no products'
                ' Stay tuned and come back later. \nGoodbye! ',
                textAlign: TextAlign.justify,
                style:
                    TextStyle(fontSize: 18, fontFamily: 'Roboto', height: 1.3),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text(
                  '      Size',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  '                 Color',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const SizedBox(width: 20),
                Container(
                  height: 50,
                  width: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Color.fromARGB(255, 222, 218, 218),
                  ),
                  child: const SizeSelection(),
                ),
                const SizedBox(width: 15),
                Container(
                  height: 50,
                  width: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Color.fromARGB(255, 222, 218, 218),
                  ),
                  child: const ColorSelection(),
                )
              ],
            ),
            const SizedBox(height: 70),
            Container(
              height: 55,
              width: 370,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                color: Colors.orange,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined,
                      color: Colors.white, size: 30),
                  SizedBox(width: 30),
                  Text(
                    'Add to Cart',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
