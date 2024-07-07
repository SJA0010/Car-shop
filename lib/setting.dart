import 'package:flutter/material.dart';
import 'package:modified_carshop/address.dart';
import 'package:modified_carshop/home.dart';
import 'package:modified_carshop/languages.dart';
import 'package:modified_carshop/options.dart';
import 'package:modified_carshop/policy.dart';

class settingPage extends StatefulWidget {
  const settingPage({super.key});

  @override
  State<settingPage> createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
        //setting
        alignment: Alignment.center,
        height: height,
        width: width,
        child: Stack(children: [
          Padding(
              padding: EdgeInsets.only(),
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: height,
                  width: width,
                  child: Image.asset("images/setting.jpg"),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(bottom: 730, right: 380),
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
                    child: Icon(Icons.arrow_back_sharp)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 480),
            child: Center(
              child: Container(
                alignment: Alignment.center,
                height: height * 0.24,
                width: width * 0.85,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => languagesPage(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: height * 0.08,
                        width: width * 0.85,
                        child: Text(
                          "   Languages                                                        >",
                          style: TextStyle(
                              fontSize: 18.5,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => addressPage(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: height * 0.08,
                        width: width * 0.85,
                        child: Text(
                          "   Addresses                                                        >",
                          style: TextStyle(
                              fontSize: 18.5,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => policyPage(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: height * 0.06,
                        width: width * 0.85,
                        child: Text(
                          "   Privacy Policy                                                  >",
                          style: TextStyle(
                              fontSize: 18.5,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
