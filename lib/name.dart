import 'package:flutter/material.dart';
import 'package:modified_carshop/profile.dart';
import 'package:modified_carshop/reenter.dart';
import 'package:modified_carshop/register.dart';
import 'package:modified_carshop/verify.dart';

class namePage extends StatefulWidget {
  const namePage({super.key});

  @override
  State<namePage> createState() => _namePageState();
}

class _namePageState extends State<namePage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //name
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
                    child: Image.asset("images/name.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 750, right: 380),
                child: Center(
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
                        height: height * 0.07,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                            // color: Color(0xff1A237E),
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(Icons.arrow_back_sharp)),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
