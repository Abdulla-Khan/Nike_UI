import 'package:flutter/material.dart';
import 'package:shoe_ui/Animation/fade_animation.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key key, @required this.image}) : super(key: key);
  final String image;
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: 'red',
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.cover),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
                ]),
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    child: FadeAnimation(
                        1,
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0)
                              ])),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const FadeAnimation(
                                1.3,
                                Text('Sneakers',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              const SizedBox(height: 25),
                              const FadeAnimation(
                                1.4,
                                Text(
                                  'Size',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  size(i: 1.45, name: '40'),
                                  FadeAnimation(
                                    1.5,
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      margin: const EdgeInsets.only(right: 20),
                                      child: const Center(
                                        child: Text(
                                          '42',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  size(i: 1.45, name: '44'),
                                  size(i: 1.46, name: '46'),
                                ],
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              FadeAnimation(
                                1.5,
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Buy Now',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class size extends StatelessWidget {
  size({
    this.i,
    Key key,
    @required this.name,
  }) : super(key: key);
  final String name;
  double i;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
        1,
        Container(
          width: 40,
          height: 40,
          margin: EdgeInsets.only(right: 20),
          child: Center(
            child: Text(
              name,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
