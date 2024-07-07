import 'package:flutter/material.dart';
import 'package:modified_carshop/address.dart';

class addPage extends StatefulWidget {
  const addPage({super.key});

  @override
  State<addPage> createState() => _addPageState();
}

class _addPageState extends State<addPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //add address
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
                    child: Image.asset("images/add.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 450),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => addressPage(),
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
                        "Add Address",
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
                padding: EdgeInsets.only(bottom: 750, right: 380),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => addressPage(),
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
