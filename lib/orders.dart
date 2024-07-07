import 'package:flutter/material.dart';
import 'package:modified_carshop/home.dart';

class orderPage extends StatefulWidget {
  const orderPage({super.key});

  @override
  State<orderPage> createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  var height, width;
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();

    return Scaffold(
      body: Container(
        //orders
        //          alignment: Alignment.center,
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              height: height * 0.1,
              width: width,

              // color: Colors.orange,
              child: Row(
                children: [
                  Center(
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
                          height: height * 0.08,
                          width: width * 0.1,
                          decoration: BoxDecoration(
                              //  color: Color(0xff1A237E),
                              //borderRadius:
                              //     BorderRadius.circular(30)
                              ),
                          child: Icon(Icons.arrow_back_sharp)),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: height * 0.8,
                      width: width * 0.9,
                      // color: Colors.blue,
                      child: Text(
                        "My Orders",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            Container(
              height: height * 0.07,
              width: width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(0);
                    },
                    child: Container(
                        alignment: Alignment.centerLeft,
                        height: height * 0.08,
                        width: width * 0.4,
                        child: Text(
                          "Active Orders",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: currentindex == 0
                                  ? Colors.black
                                  : Colors.grey),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(1);
                    },
                    child: Container(
                        alignment: Alignment.centerRight,
                        height: height * 0.08,
                        width: width * 0.4,
                        child: Text(
                          "pass Orders",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: currentindex == 1
                                  ? Colors.black
                                  : Colors.grey),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.82,
              width: width,
              //   color: Colors.red,
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    currentindex = value;
                    print(value);
                  });
                },
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.82,
                          width: width,
                          child: ListView(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset("images/orders.jpg"),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset("images/orders.jpg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.82,
                          width: width,
                          child: ListView(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset("images/orders.jpg"),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset("images/orders.jpg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
