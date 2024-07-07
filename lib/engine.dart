import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:modified_carshop/cart.dart';

class enginePage extends StatefulWidget {
  const enginePage({super.key});

  @override
  State<enginePage> createState() => _enginePageState();
}

class _enginePageState extends State<enginePage> {
  var height, width;
  int currrentindex = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //engine
          alignment: Alignment.center,
          height: height,
          width: width,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(),
                child: Center(
                  child: Container(
                    height: height,
                    width: width,
                    child: Image.asset("images/engine.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 300),
                child: Center(
                    child: Container(
                  height: height * 0.5,
                  width: width,
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.4,
                        width: width,
                        child: Container(
                          height: height * 0.4,
                          width: width,
                          decoration: BoxDecoration(
                              //color: Colors.amber
                              // borderRadius:
                              //     BorderRadius.circular(40)
                              ),
                          child: CarouselSlider(
                            items: [
                              Container(
                                child: Image.asset("images/e1.jpg"),
                              ),
                              Container(
                                child: Image.asset("images/e2.jpg"),
                              ),
                              Container(
                                child: Image.asset("images/e3.jpg"),
                              ),
                              Container(
                                child: Image.asset("images/e4.jpg"),
                              ),
                            ],
                            options: CarouselOptions(
                              height: 400,
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.7,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 2),
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 600),
                              autoPlayCurve: Curves.linear,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              onPageChanged: (index, reason) {
                                print(index);

                                setState(() {
                                  currrentindex = index;
                                });
                              },
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: height * 0.1,
                        width: width,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Center(
                                child: Container(
                                  width: width * 0.1,
                                  height: height * 0.01,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: width * 0.02,
                                        height: height * 0.01,
                                        decoration: BoxDecoration(
                                            color: currrentindex == 0
                                                ? Colors.black
                                                : Colors.grey,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        width: width * 0.02,
                                        height: height * 0.01,
                                        decoration: BoxDecoration(
                                            color: currrentindex == 1
                                                ? Colors.black
                                                : Colors.grey,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        width: width * 0.02,
                                        height: height * 0.01,
                                        decoration: BoxDecoration(
                                            color: currrentindex == 2
                                                ? Colors.black
                                                : Colors.grey,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        width: width * 0.02,
                                        height: height * 0.01,
                                        decoration: BoxDecoration(
                                            color: currrentindex == 3
                                                ? Colors.black
                                                : Colors.grey,
                                            shape: BoxShape.circle),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 730, left: 180),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => cartPage(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.06,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          color: Color(0xff1A237E),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Buy",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
