import 'package:flutter/material.dart';
import 'package:modified_carshop/bussiness.dart';
import 'package:modified_carshop/cart.dart';
import 'package:modified_carshop/home.dart';
import 'package:modified_carshop/orders.dart';
import 'package:modified_carshop/select.dart';
import 'package:modified_carshop/setting.dart';
import 'package:modified_carshop/wheels.dart';

class optionsPage extends StatefulWidget {
  const optionsPage({super.key});

  @override
  State<optionsPage> createState() => _optionsPageState();
}

class _optionsPageState extends State<optionsPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      // body: 
      // Container(
      //   //options
      //   alignment: Alignment.center,
      //   height: height,
      //   width: width,
      //   child: Column(
      //     children: [
      //       Container(
      //         alignment: Alignment.center,
      //         height: height * 0.25,
      //         width: width,
      //         child: Image.asset("images/car.png"),
      //       ),
      //       Container(
      //         alignment: Alignment.center,
      //         height: height * 0.6,
      //         width: width,
      //         child: Column(
      //           children: [
      //             InkWell(
      //               onTap: () {
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => bussniessPage(),
      //                     ));
      //               },
      //               child: Container(
      //                 alignment: Alignment.center,
      //                 height: height * 0.06,
      //                 width: width * 0.8,
      //                 child: Row(
      //                   children: [
      //                     Container(
      //                       alignment: Alignment.centerLeft,
      //                       height: height * 0.6,
      //                       width: width * 0.1,
      //                       child: Icon(Icons.widgets_outlined),
      //                     ),
      //                     Container(
      //                         alignment: Alignment.centerLeft,
      //                         height: height * 0.6,
      //                         width: width * 0.6,
      //                         child: Text(
      //                           "Register Bussiness",
      //                           style: TextStyle(
      //                             fontSize: 16,
      //                           ),
      //                         )),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //             InkWell(
      //               onTap: () {
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => homePage(),
      //                     ));
      //               },
      //               child: Container(
      //                 alignment: Alignment.center,
      //                 height: height * 0.06,
      //                 width: width * 0.8,
      //                 child: Row(
      //                   children: [
      //                     Container(
      //                       alignment: Alignment.centerLeft,
      //                       height: height * 0.6,
      //                       width: width * 0.1,
      //                       child: Icon(Icons.home),
      //                     ),
      //                     Container(
      //                         alignment: Alignment.centerLeft,
      //                         height: height * 0.6,
      //                         width: width * 0.6,
      //                         child: Text(
      //                           "Home",
      //                           style: TextStyle(
      //                             fontSize: 16,
      //                           ),
      //                         )),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //             InkWell(
      //               onTap: () {
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => wheelsPage(),
      //                     ));
      //               },
      //               child: Container(
      //                 alignment: Alignment.center,
      //                 height: height * 0.06,
      //                 width: width * 0.8,
      //                 child: Row(
      //                   children: [
      //                     Container(
      //                       alignment: Alignment.centerLeft,
      //                       height: height * 0.6,
      //                       width: width * 0.1,
      //                       child: Icon(Icons.person),
      //                     ),
      //                     Container(
      //                         alignment: Alignment.centerLeft,
      //                         height: height * 0.6,
      //                         width: width * 0.6,
      //                         child: Text(
      //                           "Profile",
      //                           style: TextStyle(
      //                             fontSize: 16,
      //                           ),
      //                         )),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //             InkWell(
      //               onTap: () {
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => cartPage(),
      //                     ));
      //               },
      //               child: Container(
      //                 alignment: Alignment.center,
      //                 height: height * 0.06,
      //                 width: width * 0.8,
      //                 child: Row(
      //                   children: [
      //                     Container(
      //                       alignment: Alignment.centerLeft,
      //                       height: height * 0.6,
      //                       width: width * 0.1,
      //                       child: Icon(Icons.shopify),
      //                     ),
      //                     Container(
      //                         alignment: Alignment.centerLeft,
      //                         height: height * 0.6,
      //                         width: width * 0.6,
      //                         child: Text(
      //                           "My Cart",
      //                           style: TextStyle(
      //                             fontSize: 16,
      //                           ),
      //                         )),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //             InkWell(
      //               onTap: () {
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => orderPage(),
      //                     ));
      //               },
      //               child: Container(
      //                 alignment: Alignment.center,
      //                 height: height * 0.06,
      //                 width: width * 0.8,
      //                 child: Row(
      //                   children: [
      //                     Container(
      //                       alignment: Alignment.centerLeft,
      //                       height: height * 0.6,
      //                       width: width * 0.1,
      //                       child: Icon(Icons.list_alt_sharp),
      //                     ),
      //                     Container(
      //                         alignment: Alignment.centerLeft,
      //                         height: height * 0.6,
      //                         width: width * 0.6,
      //                         child: Text(
      //                           "My Order",
      //                           style: TextStyle(
      //                             fontSize: 16,
      //                           ),
      //                         )),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //             InkWell(
      //               onTap: () {
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => settingPage(),
      //                     ));
      //               },
      //               child: Container(
      //                 alignment: Alignment.center,
      //                 height: height * 0.06,
      //                 width: width * 0.8,
      //                 child: Row(
      //                   children: [
      //                     Container(
      //                       alignment: Alignment.centerLeft,
      //                       height: height * 0.6,
      //                       width: width * 0.1,
      //                       child: Icon(Icons.settings),
      //                     ),
      //                     Container(
      //                         alignment: Alignment.centerLeft,
      //                         height: height * 0.6,
      //                         width: width * 0.6,
      //                         child: Text(
      //                           "Setting",
      //                           style: TextStyle(
      //                             fontSize: 16,
      //                           ),
      //                         )),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         alignment: Alignment.center,
      //         height: height * 0.15,
      //         width: width,
      //         child: InkWell(
      //           onTap: () {
      //             Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => selectPage(),
      //                 ));
      //           },
      //           child: Container(
      //             alignment: Alignment.center,
      //             height: height * 0.1,
      //             width: width * 0.8,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   alignment: Alignment.center,
      //                   height: height * 0.1,
      //                   width: width * 0.1,
      //                   decoration: BoxDecoration(
      //                       shape: BoxShape.circle, color: Colors.black),
      //                 ),
      //                 Container(
      //                   alignment: Alignment.center,
      //                   height: height * 0.15,
      //                   width: width * 0.7,
      //                   child: Column(
      //                     children: [
      //                       Container(
      //                         alignment: Alignment.bottomLeft,
      //                         height: height * 0.05,
      //                         width: width * 0.7,
      //                         child: Text(
      //                           "   Subhan Abbasi",
      //                           style: TextStyle(
      //                               fontSize: 15, fontWeight: FontWeight.bold),
      //                         ),
      //                       ),
      //                       Container(
      //                         alignment: Alignment.centerLeft,
      //                         height: height * 0.03,
      //                         width: width * 0.7,
      //                         child: Text(
      //                           "   MSJA010@gmail.com",
      //                           style:
      //                               TextStyle(fontSize: 12, color: Colors.grey),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
