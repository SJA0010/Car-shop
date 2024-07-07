import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modified_carshop/code.dart';
import 'package:modified_carshop/home.dart';
import 'package:modified_carshop/password.dart';
import 'package:modified_carshop/register.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //login
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
                    child: Image.asset("images/login.jpg"),
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
                padding: EdgeInsets.only(),
                child: Center(
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
                      height: height * 0.07,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          color: Color(0xff1A237E),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 120),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => passwordPage(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.07,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          //   color: Color(0xff1A237E),
                          // borderRadius: BorderRadius.circular(30)
                          ),
                      child: Text(
                        "Forgot your password ?",
                        style: TextStyle(
                            color: Colors.grey,
                            // fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 375),
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
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          //   color: Color(0xff1A237E),
                          // borderRadius: BorderRadius.circular(30)
                          ),
                      child: Text(
                        "Register  >",
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 700, left: 380),
                child: Center(
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
                      height: height * 0.07,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          // color: Color(0xff1A237E),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Skip   >",
                        style: TextStyle(
                            // color: Colors.white,
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
