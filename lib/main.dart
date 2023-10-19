import 'package:flutter/material.dart';
import 'package:mini_mart_project/my_listview.dart';
import 'package:mini_mart_project/second_page.dart';
import 'best_seller_display.dart';
import 'icons_display.dart';

void main() {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const _MainPageState(),
    );
  }
}

class _MainPageState extends StatefulWidget {
  const _MainPageState();

  @override
  State<_MainPageState> createState() => _MainPageStateState();
}

class _MainPageStateState extends State<_MainPageState> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome back, ',
                    style: TextStyle(fontFamily: 'roboto', fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Suleiman Zaheed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const SecondPage();
                              },
                            ),
                          );
                        },
                        icon:
                            const Icon(Icons.shopping_cart_outlined, size: 28),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            controller: _controller,
                            decoration: const InputDecoration(
                              hintText: ' Searching Item',
                              prefixIcon: Icon(Icons.search,
                                  color: Color.fromARGB(255, 165, 163, 163)),
                              filled: true,
                              fillColor: Color.fromARGB(255, 237, 234, 234),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SecondPage();
                                  },
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.menu_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(
                              decelerationRate: ScrollDecelerationRate.fast),
                          child: Row(
                            children: [
                              MyListView(),
                              SizedBox(width: 10),
                              MyListView(),
                              SizedBox(width: 10),
                              MyListView(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Container(
                      height: 10,
                      width: 100,
                      color: Colors.white,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.amber,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconsDisplay(
                          icons: Icons.music_video_rounded, text: '  Music'),
                      IconsDisplay(
                          icons: Icons.villa_outlined, text: 'Property'),
                      IconsDisplay(
                          icons: Icons.games_outlined, text: '   Game'),
                      IconsDisplay(
                          icons: Icons.phone_android_outlined,
                          text: '  Gadget'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconsDisplay(
                          icons: Icons.tv_outlined, text: 'Electronics'),
                      IconsDisplay(
                          icons: Icons.chair_alt_outlined, text: 'Furnitures'),
                      IconsDisplay(
                          icons: Icons.fire_truck_outlined, text: 'Automobile'),
                      IconsDisplay(
                          icons: Icons.local_library_outlined, text: '  Books')
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Best Seller',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const SecondPage();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 250, 188, 1)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BestSellerDisplay(text: 'Plant'),
                      BestSellerDisplay(text: 'Lamp'),
                      BestSellerDisplay(text: 'Chair'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
