import 'package:flutter/material.dart';
import 'package:modified_carshop/wheels.dart';

class selectPage extends StatefulWidget {
  const selectPage({super.key});

  @override
  State<selectPage> createState() => _selectPageState();
}

class _selectPageState extends State<selectPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
        //select
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
                  child: Image.asset("images/select.jpg"),
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
                        builder: (context) => wheelsPage(),
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
            padding: EdgeInsets.only(
              top: 680,
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => wheelsPage(),
                      ));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: height * 0.06,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                      color: Colors.white54, shape: BoxShape.circle),
                  child: Icon(
                    Icons.cancel_outlined,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
