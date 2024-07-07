import 'package:flutter/material.dart';
import 'package:modified_carshop/code.dart';

class verifyPage extends StatefulWidget {
  const verifyPage({super.key});

  @override
  State<verifyPage> createState() => _verifyPageState();
}

class _verifyPageState extends State<verifyPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //verify
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
                    child: Image.asset("images/verify.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 700, right: 380),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => codePage(),
                          ));
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: height * 0.07,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                            // color: Color(0xff1A237E),
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(Icons.arrow_back_sharp)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 520),
                child: Center(
                  child: Container(
                    height: height * 0.35,
                    width: width * 0.8,
                    child: Image.asset("images/car.png"),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
