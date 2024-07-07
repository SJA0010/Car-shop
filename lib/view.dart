import 'package:flutter/material.dart';
import 'package:modified_carshop/home.dart';

class viewPage extends StatefulWidget {
  const viewPage({super.key});

  @override
  State<viewPage> createState() => _viewPageState();
}

class _viewPageState extends State<viewPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();

    return Scaffold(
      body: Container(
        //views
        //          alignment: Alignment.center,
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              height: height * 0.1,
              width: width,
              color: Colors.blueGrey[700],
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
                              //bviewRadius:
                              //     BviewRadius.circular(30)
                              ),
                          child: Icon(
                            Icons.arrow_back_sharp,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: height * 0.8,
                      width: width * 0.9,
                      // color: Colors.blue,
                      child: Text(
                        "Featured Products",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            Container(
              height: height * 0.07,
              width: width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(1);
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: height * 0.08,
                        width: width * 0.3,
                        child: Text(
                          "Audi",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: index == 0 ? Colors.black : Colors.grey),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(0);
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: height * 0.08,
                        width: width * 0.3,
                        child: Text(
                          "Honda",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: index == 1 ? Colors.black : Colors.grey),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(2);
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: height * 0.08,
                        width: width * 0.3,
                        child: Text(
                          "BMW",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: index == 2 ? Colors.black : Colors.grey),
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
                    index = value;
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
                                child: Image.asset("images/view.jpg"),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset("images/view.jpg"),
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
                                child: Image.asset("images/view.jpg"),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset("images/view.jpg"),
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
                                child: Image.asset("images/view.jpg"),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset("images/view.jpg"),
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
