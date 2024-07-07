import 'package:flutter/material.dart';
import 'package:modified_carshop/reenter.dart';
import 'package:modified_carshop/register.dart';
import 'package:modified_carshop/verify.dart';

class codePage extends StatefulWidget {
  const codePage({super.key});

  @override
  State<codePage> createState() => _codePageState();
}

class _codePageState extends State<codePage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //code
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
                    child: Image.asset("images/code.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 370),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => reenterPage(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.04,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          // color: Color(0xff1A237E),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Resend Code   >",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
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
                            builder: (context) => registerPage(),
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
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => verifyPage(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.07,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          color: Color(0xff1A237E),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "verify",
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
