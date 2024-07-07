import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modified_carshop/body.dart';
import 'package:modified_carshop/breaks.dart';
import 'package:modified_carshop/bussiness.dart';
import 'package:modified_carshop/cart.dart';
import 'package:modified_carshop/engine.dart';
import 'package:modified_carshop/light.dart';
import 'package:modified_carshop/notification.dart';
import 'package:modified_carshop/options.dart';
import 'package:modified_carshop/orders.dart';
import 'package:modified_carshop/profile.dart';
import 'package:modified_carshop/search.dart';
import 'package:modified_carshop/select.dart';
import 'package:modified_carshop/setting.dart';
import 'package:modified_carshop/view.dart';
import 'package:modified_carshop/wheels.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var height, width;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int currrentindex = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Container(
          //options
          alignment: Alignment.center,
          height: height,
          width: width * 0.8,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: height * 0.25,
                width: width,
                child: Image.asset("images/car.png"),
              ),
              Container(
                alignment: Alignment.center,
                height: height * 0.6,
                width: width * 0.5,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => bussniessPage(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: height * 0.05,
                        width: width * 0.5,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: height * 0.1,
                              width: width * 0.1,
                              child: Icon(Icons.widgets_outlined),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                height: height * 0.4,
                                width: width * 0.4,
                                child: Text(
                                  "Register Bussiness",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => homePage(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: height * 0.06,
                        width: width * 0.5,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: height * 0.6,
                              width: width * 0.1,
                              child: Icon(Icons.home),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                height: height * 0.6,
                                width: width * 0.4,
                                child: Text(
                                  "Home",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => profilePage()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: height * 0.06,
                        width: width * 0.5,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: height * 0.6,
                              width: width * 0.1,
                              child: Icon(Icons.person),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                height: height * 0.6,
                                width: width * 0.4,
                                child: Text(
                                  "Profile",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
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
                        width: width * 0.5,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: height * 0.6,
                              width: width * 0.1,
                              child: Icon(Icons.shopify),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                height: height * 0.6,
                                width: width * 0.4,
                                child: Text(
                                  "My Cart",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => orderPage(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: height * 0.06,
                        width: width * 0.5,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: height * 0.6,
                              width: width * 0.1,
                              child: Icon(Icons.list_alt_sharp),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                height: height * 0.6,
                                width: width * 0.4,
                                child: Text(
                                  "My Order",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => settingPage(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: height * 0.06,
                        width: width * 0.5,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: height * 0.6,
                              width: width * 0.1,
                              child: Icon(Icons.settings),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                height: height * 0.6,
                                width: width * 0.4,
                                child: Text(
                                  "Setting",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: height * 0.15,
                width: width * 0.5,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => profilePage(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: height * 0.1,
                    width: width * 0.7,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: height * 0.1,
                          width: width * 0.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: height * 0.15,
                          width: width * 0.4,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                height: height * 0.05,
                                width: width * 0.4,
                                child: Text(
                                  "   Subhan Abbasi",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: height * 0.03,
                                width: width * 0.4,
                                child: Text(
                                  "   MSJA010@gmail.com",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
          //home
          alignment: Alignment.center,
          height: height,
          width: width,
          child: Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => searchPage(),
                      ));
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 600),
                  child: Center(
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            height: height * 0.07,
                            width: width * 0.1,
                            child: Icon(
                              Icons.search,
                              size: 25,
                            ),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              height: height * 0.07,
                              width: width * 0.8,
                              child: Text(
                                "   Search name or classic number",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.grey[600]),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 730),
                child: Center(
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.9,
                    // color: Colors.red,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => optionsPage(),
                            //     ));
                            _scaffoldKey.currentState!.openDrawer();
                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: height * 0.07,
                            width: width * 0.7,
                            child: Icon(
                              Icons.list,
                              size: 25,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => notificationPage(),
                                ));
                          },
                          child: Container(
                            alignment: Alignment.centerRight,
                            height: height * 0.07,
                            width: width * 0.1,
                            child: Icon(
                              Icons.notification_add,
                              size: 25,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => cartPage(),
                                ));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.07,
                            width: width * 0.1,
                            child: Icon(
                              Icons.shopping_bag,
                              size: 25,
                              color: Colors.blue[900],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 130),
                child: Center(
                  child: Container(
                    height: height * 2,
                    width: width,
                    decoration: BoxDecoration(),
                    child: ListView(
                      children: [
                        Container(
                          height: height,
                          width: width,
                          child: Column(
                            children: [
                              Container(
                                height: height * 0.34,
                                width: width,
                                // color: Colors.red,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => wheelsPage(),
                                        ));
                                  },
                                  child: Center(
                                      child: Container(
                                    height: height * 0.34,
                                    width: width,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: height * 0.32,
                                          width: width,
                                          child: Container(
                                            height: height * 0.3,
                                            width: width,
                                            decoration: BoxDecoration(
                                                //color: Colors.amber
                                                // borderRadius:
                                                //     BorderRadius.circular(40)
                                                ),
                                            child: CarouselSlider(
                                              items: [
                                                Container(
                                                  child: Image.asset(
                                                      "images/ho1.jpg"),
                                                ),
                                                Container(
                                                  child: Image.asset(
                                                      "images/ho2.jpg"),
                                                ),
                                                Container(
                                                  child: Image.asset(
                                                      "images/ho1.jpg"),
                                                ),
                                                Container(
                                                  child: Image.asset(
                                                      "images/ho2.jpg"),
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
                                                autoPlayInterval:
                                                    Duration(seconds: 2),
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
                                                scrollDirection:
                                                    Axis.horizontal,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: height * 0.01,
                                          width: width,
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(),
                                                child: Center(
                                                  child: Container(
                                                    width: width * 0.3,
                                                    height: height * 0.01,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: width * 0.07,
                                                          height: height * 0.01,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  currrentindex ==
                                                                          0
                                                                      ? Colors
                                                                          .black
                                                                      : Colors
                                                                          .grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                        ),
                                                        Container(
                                                          width: width * 0.07,
                                                          height: height * 0.01,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  currrentindex ==
                                                                          1
                                                                      ? Colors
                                                                          .black
                                                                      : Colors
                                                                          .grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                        ),
                                                        Container(
                                                          width: width * 0.07,
                                                          height: height * 0.01,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  currrentindex ==
                                                                          2
                                                                      ? Colors
                                                                          .black
                                                                      : Colors
                                                                          .grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                        ),
                                                        Container(
                                                          width: width * 0.07,
                                                          height: height * 0.01,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  currrentindex ==
                                                                          3
                                                                      ? Colors
                                                                          .black
                                                                      : Colors
                                                                          .grey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
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
                              ),
                              Container(
                                height: height * 0.05,
                                width: width * 0.9,
                                child: Row(
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        height: height * 0.05,
                                        width: width * 0.7,
                                        child: Text(
                                          "   Featured Products",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => viewPage(),
                                            ));
                                      },
                                      child: Center(
                                        child: Container(
                                            alignment: Alignment.centerLeft,
                                            height: height * 0.05,
                                            width: width * 0.2,
                                            //    color: Colors.orange,
                                            child: Text(
                                              "  View All",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey[
                                                    600], //fontWeight: FontWeight.bold
                                              ),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: height * 0.275,
                                width: width,
                                //  color: Colors.yellow,
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * 0.275,
                                      width: width * 0.5,
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        breaksPage())));
                                          },
                                          child: Center(
                                            child: Container(
                                              height: height * 0.275,
                                              width: width * 0.4,
                                              decoration: BoxDecoration(

                                                  // borderRadius:
                                                  //     BorderRadius.circular(40)
                                                  ),
                                              child:
                                                  Image.asset("images/h1.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.275,
                                      width: width * 0.5,
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        lightsPage())));
                                          },
                                          child: Center(
                                            child: Container(
                                              height: height * 0.275,
                                              width: width * 0.4,
                                              decoration: BoxDecoration(

                                                  // borderRadius:
                                                  //     BorderRadius.circular(40)
                                                  ),
                                              child:
                                                  Image.asset("images/h2.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: height * 0.05,
                                width: width * 0.9,
                                child: Row(
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        height: height * 0.05,
                                        width: width * 0.7,
                                        child: Text(
                                          "   Featured Products",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => viewPage(),
                                            ));
                                      },
                                      child: Center(
                                        child: Container(
                                            alignment: Alignment.centerLeft,
                                            height: height * 0.05,
                                            width: width * 0.2,
                                            //    color: Colors.orange,
                                            child: Text(
                                              "  View All",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey[
                                                    600], //fontWeight: FontWeight.bold
                                              ),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: height * 0.275,
                                width: width,
                                //  color: Colors.yellow,
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * 0.275,
                                      width: width * 0.5,
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        bodyPage())));
                                          },
                                          child: Center(
                                            child: Container(
                                              height: height * 0.275,
                                              width: width * 0.4,
                                              decoration: BoxDecoration(

                                                  // borderRadius:
                                                  //     BorderRadius.circular(40)
                                                  ),
                                              child:
                                                  Image.asset("images/h3.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.275,
                                      width: width * 0.5,
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        enginePage())));
                                          },
                                          child: Center(
                                            child: Container(
                                              height: height * 0.275,
                                              width: width * 0.4,
                                              decoration: BoxDecoration(

                                                  // borderRadius:
                                                  //     BorderRadius.circular(40)
                                                  ),
                                              child:
                                                  Image.asset("images/h4.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
