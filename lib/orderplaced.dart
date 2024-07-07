import 'package:flutter/material.dart';
import 'package:modified_carshop/home.dart';

class orderplacedPage extends StatefulWidget {
  const orderplacedPage({super.key});

  @override
  State<orderplacedPage> createState() => _orderplacedPageState();
}

class _orderplacedPageState extends State<orderplacedPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //order placed
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
                    child: Image.asset("images/orderplaced.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 200,
                ),
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
                      height: height * 0.06,
                      width: width * 0.5,
                      decoration: BoxDecoration(
                          color: Color(0xff1A237E),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Back To Home",
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
