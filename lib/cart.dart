import 'package:flutter/material.dart';
import 'package:modified_carshop/address.dart';
import 'package:modified_carshop/home.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //cart
          alignment: Alignment.center,
          height: height,
          width: width,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: height * 0.1,
                      width: width,
                      // color: Colors.orange,
                      child: Row(
                        children: [
                          Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => homePage(),
                                    ));
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  height: height * 0.08,
                                  width: width * 0.1,
                                  decoration: BoxDecoration(
                                      //  color: Color(0xff1A237E),
                                      //borderRadius:
                                      //     BorderRadius.circular(30)
                                      ),
                                  child: Icon(Icons.arrow_back_sharp)),
                            ),
                          ),
                          Container(
                              alignment: Alignment.center,
                              height: height * 0.8,
                              width: width * 0.9,
                              // color: Colors.blue,
                              child: Text(
                                "Cart",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      height: height * 0.9,
                      child: Stack(children: [
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Center(
                            child: Container(
                              height: height * 0.9,
                              width: width,
                              child: ListView(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.asset("images/cart.jpg"),
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      child: Stack(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            child:
                                                Image.asset("images/cart2.jpg"),
                                          ),
                                          InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          addressPage(),
                                                    ));
                                              },
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 720),
                                                child: Center(
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: width * 0.9,
                                                    height: height * 0.08,
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .deepPurple[800],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40)),
                                                    child: Text(
                                                      "Checkout",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
