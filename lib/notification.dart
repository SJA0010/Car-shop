import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modified_carshop/home.dart';

class notificationPage extends StatefulWidget {
  const notificationPage({super.key});

  @override
  State<notificationPage> createState() => _notificationPageState();
}

class _notificationPageState extends State<notificationPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //Notification
          alignment: Alignment.center,
          height: height,
          width: width,
          child: Column(
            children: [
              Container(
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
                                "Notification",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.9,
                      width: width,
                      child: ListView(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset("images/Notification.jpg"),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset("images/Notification.jpg"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
