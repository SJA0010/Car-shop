import 'package:flutter/material.dart';
import 'package:modified_carshop/add.dart';
import 'package:modified_carshop/card.dart';
import 'package:modified_carshop/cart.dart';
import 'package:modified_carshop/home.dart';
import 'package:modified_carshop/payment.dart';

class addressPage extends StatefulWidget {
  const addressPage({super.key});

  @override
  State<addressPage> createState() => _addressPageState();
}

class _addressPageState extends State<addressPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //address
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
                    child: Image.asset("images/address.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 670),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => paymentPage(),
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
                        "Continue to payment",
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
                            builder: (context) => cartPage(),
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
                padding: EdgeInsets.only(top: 500),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => addPage(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.07,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          //color: Color(0xff1A237E),
                          // borderRadius: BorderRadius.circular(30)
                          border: Border.all(
                        width: 2,
                      )),
                      child: Text(
                        "+  Add Address",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
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
