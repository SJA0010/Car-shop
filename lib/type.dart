import 'package:flutter/material.dart';
import 'package:modified_carshop/catalog.dart';
import 'package:modified_carshop/select.dart';

class typePage extends StatefulWidget {
  const typePage({super.key});

  @override
  State<typePage> createState() => _typePageState();
}

class _typePageState extends State<typePage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //type
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
                    child: Image.asset("images/type.jpg"),
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
                            builder: (context) => catalogPage(),
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
