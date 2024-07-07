import 'package:flutter/material.dart';
import 'package:modified_carshop/home.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
        //search
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
                  child: Image.asset("images/searcho.jpg"),
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
            padding: EdgeInsets.only(top: 110, right: 05),
            child: Center(
              child: Container(
                alignment: Alignment.center,
                height: height * 0.79,
                width: width * 0.76,
                color: Colors.white,
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset("images/search.jpg"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset("images/search.jpg"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
