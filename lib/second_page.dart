import 'package:flutter/material.dart';

import 'explore_list.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 47, 83),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.amber,
            size: 40,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
                  children: const [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                        Row(
                          children: [
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
                        SizedBox(height: 30),
                        ExploreList(text: 'Lamp'),
                        SizedBox(height: 27),
                        ExploreList(text: 'Car'),
                        SizedBox(height: 27),
                        ExploreList(text: 'Plant'),
                        SizedBox(height: 27),
                        ExploreList(text: 'Book'),
                        SizedBox(height: 27),
                        ExploreList(text: 'Chair'),
                         SizedBox(height: 27),
                        ExploreList(text: 'Electronics'),
                         SizedBox(height: 27),
                        ExploreList(text: 'Automobile'),
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
