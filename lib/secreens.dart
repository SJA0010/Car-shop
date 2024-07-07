import 'package:flutter/material.dart';
import 'package:modified_carshop/home.dart';
import 'package:modified_carshop/languages.dart';
import 'package:modified_carshop/login.dart';
import 'package:modified_carshop/main.dart';

class secreensPage extends StatefulWidget {
  const secreensPage({super.key});

  @override
  State<secreensPage> createState() => _secreensPageState();
}

class _secreensPageState extends State<secreensPage> {
  var height, width;
  int index = 1;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: width,
          height: height * 0.9,
          alignment: Alignment.center,
          child: PageView(
            controller: controller,
            onPageChanged: (value) {
              setState(() {
                print(value);
                index = value + 1;
              });
            },
            children: [
              Container(
                width: width,
                height: height * 0.9,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/s1.jpg"))),
              ),
              Container(
                width: width,
                height: height * 0.9,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/s2.jpg"))),
              ),
              Container(
                width: width,
                height: height * 0.9,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/s3.jpg"))),
              ),
              Container(
                width: width,
                height: height * 0.9,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/s4.jpg"))),
              ),
              Container(
                width: width,
                height: height * 0.9,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/s5.jpg"))),
              ),
            ],
          ),
        ),
        Container(
          width: width,
          height: height * 0.1,
          alignment: Alignment.center,
          // color: Colors.blue,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 350),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        index = index + 1;
                        print("$index");

                        controller.jumpToPage(index);
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.06,
                      width: width * 0.06,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: index == 5
                          ? InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => loginPage(),
                                    ));
                              },
                              child: Icon(
                                Icons.done,
                                color: Colors.white,
                              ))
                          : Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.white,
                            ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 250),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        index = index - 1;
                        print("$index");
                        controller.jumpToPage(index);
                      });
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
                        Icons.keyboard_arrow_left_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 350),
                child: Center(
                    child: Text(
                  "$index/",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 300,
                ),
                child: Center(
                    child: Text(
                  "5",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
