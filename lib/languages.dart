import 'package:flutter/material.dart';
import 'package:modified_carshop/secreens.dart';

class languagesPage extends StatefulWidget {
  const languagesPage({super.key});

  @override
  State<languagesPage> createState() => _languagesPageState();
}

class _languagesPageState extends State<languagesPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //languages
          alignment: Alignment.center,
          height: height,
          width: width,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: height * 0.35,
                width: width * 0.9,
                child: Image.asset("images/car.png"),
              ),
              Container(
                alignment: Alignment.center,
                height: height * 0.35,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: height * 0.08,
                      width: width * 0.8,
                      child: Image.asset("images/icon2.png"),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: height * 0.05,
                      width: width * 0.8,
                      child: Text(
                        "Choose Your Preferred Language",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      height: height * 0.03,
                      width: width * 0.8,
                      child: Text(
                        "  Please Select Your language",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.09,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.grey[50],
                          border: Border.all(width: 0.5, color: Colors.grey)),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.06,
                            width: width * 0.1,
                            child: Image.asset('images/franch.png'),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: height * 0.06,
                            width: width * 0.7,
                            child: Text(
                              "  Arabic",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => secreensPage(),
                                  ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: height * 0.06,
                              width: width * 0.06,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.08,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.06,
                            width: width * 0.1,
                            child: Image.asset('images/england.png'),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: height * 0.06,
                            width: width * 0.7,
                            child: Text(
                              "  English",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => secreensPage(),
                                  ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: height * 0.06,
                              width: width * 0.06,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
