import 'package:flutter/material.dart';

import 'explore_list.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 47, 83),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(
                      decelerationRate: ScrollDecelerationRate.fast),
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Explore',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontFamily: 'Roboto'),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  'Find Products easier here',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      wordSpacing: 5),
                                ),
                              ],
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.orange),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const ExploreList(text: 'Lamp'),
                        const SizedBox(height: 27),
                        const ExploreList(text: 'Car'),
                        const SizedBox(height: 27),
                        const ExploreList(text: 'Plant'),
                        const SizedBox(height: 27),
                        const ExploreList(text: 'Book'),
                        const SizedBox(height: 27),
                        const ExploreList(text: 'Chair'),
                        const SizedBox(height: 27),
                        const ExploreList(text: 'Electronics'),
                        const SizedBox(height: 27),
                        const ExploreList(text: 'Automobile'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
