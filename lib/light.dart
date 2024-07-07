import 'package:flutter/material.dart';
import 'package:modified_carshop/cart.dart';

class lightsPage extends StatefulWidget {
  const lightsPage({super.key});

  @override
  State<lightsPage> createState() => _lightsPageState();
}

class _lightsPageState extends State<lightsPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //breaks
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
                padding: EdgeInsets.only(bottom: 350),
                child: Center(
                  child: Container(
                    height: height * 0.6,
                    width: width,
                    color: Colors.white54,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: height,
                          width: width,
                          child: Image.asset("images/e1.jpg"),
                        ),
                        Container(
                          height: height,
                          width: width,
                          child: Image.asset("images/e2.jpg"),
                        ),
                        Container(
                          height: height,
                          width: width,
                          child: Image.asset("images/e3.jpg"),
                        ),
                        Container(
                          height: height,
                          width: width,
                          child: Image.asset("images/e4.jpg"),
                        ),
                      ],
                    ),
                  ),
                ),
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
