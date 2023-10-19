import 'package:flutter/material.dart';
import 'package:mini_mart_project/main.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 20),
            const Image(
              image: AssetImage('images/out_of_stock.jpg'),
              width: 200,
            ),
            const Image(
              image: AssetImage('images/soldout.jpg'),
            ),
            const Image(
              image: AssetImage('images/out_of_stock.jpg'),
              width: 200,
            ),
            const SizedBox(height: 90),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const MyStore();
                              },
                            ),
                          );
                
              },
              child: Container(
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
                    SizedBox(width: 30),
                    Text(
                      'Check Other Products',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
