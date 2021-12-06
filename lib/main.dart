import 'package:flutter/material.dart';

import 'Animation/fade_animation.dart';
import 'detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Shoes',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ))
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                            child: Text(
                          'All',
                          style: TextStyle(fontSize: 20),
                        )),
                      ),
                    ),
                    const FadeAnimation(
                      1,
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Center(
                          child: Text(
                            'Sneakers',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const FadeAnimation(
                      1.1,
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Center(
                          child: Text(
                            'Football',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const FadeAnimation(
                      1.2,
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Center(
                          child: Text(
                            'Soccer',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const FadeAnimation(
                      1.3,
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Center(
                          child: Text(
                            'Golf',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              FadeAnimation(
                1.5,
                makeItem(image: 'assets/one.jpg', tag: 'red', context: context),
              ),
              FadeAnimation(
                2,
                makeItem(
                    image: 'assets/two.jpg', tag: 'blue', context: context),
              ),
              FadeAnimation(
                3,
                makeItem(
                    image: 'assets/three.jpg', tag: 'white', context: context),
              )
            ],
          ),
        )));
  }

  Widget makeItem({image, tag, context}) {
    bool isfav = false;
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => DetailPage(
                        image: image,
                      )));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      FadeAnimation(
                        1,
                        Text('Sneakers',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      SizedBox(height: 10),
                      FadeAnimation(
                        1.1,
                        Text('Nike',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ),
                    ],
                  )),
                  FadeAnimation(
                    1.2,
                    Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.favorite,
                        size: 20,
                        color: isfav ? Colors.red : Colors.black,
                      )),
                    ),
                  ),
                ],
              ),
              const FadeAnimation(
                1.3,
                Text('100\$',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
