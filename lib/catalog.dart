import 'package:flutter/material.dart';
import 'package:modified_carshop/select.dart';
import 'package:modified_carshop/type.dart';
import 'package:modified_carshop/wheels.dart';

class catalogPage extends StatefulWidget {
  const catalogPage({super.key});

  @override
  State<catalogPage> createState() => _catalogPageState();
}

class _catalogPageState extends State<catalogPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //catalog
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
                    child: Image.asset("images/catalog.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 745, right: 340),
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
                        child: Icon(
                          Icons.arrow_back_outlined,
                          size: 35,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 400,
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => typePage(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.5,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.redAccent.withOpacity(0.0),
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
