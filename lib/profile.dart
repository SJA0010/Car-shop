import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modified_carshop/email.dart';
import 'package:modified_carshop/home.dart';
import 'package:modified_carshop/name.dart';
import 'package:modified_carshop/passw.dart';
import 'package:modified_carshop/password.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
        //profile
        alignment: Alignment.center,
        height: height,
        width: width,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 320),
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: height * 0.6,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/me4.jpg"))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 300),
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: height * 0.6,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                          //fit: BoxFit.cover,
                          image: AssetImage("images/profile.jpg"))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 230),
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: height * 0.2,
                  width: width,
                  child: Text(
                    "SUBHAN ABBASI",
                    style: TextStyle(
                        color: Colors.amber[700],
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 220),
              child: Center(
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: height * 0.1,
                  width: width * 0.93,
                  child: Text(
                    "Subhan Abbasi",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 420),
              child: Center(
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: height * 0.1,
                  width: width * 0.93,
                  child: Text(
                    "Msja.010@gmail.com",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 170, left: 350),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => namePage(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: height * 0.07,
                    width: width * 0.35,
                    decoration:
                        BoxDecoration(color: Colors.amber.withOpacity(0.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 370, left: 350),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => emailPage(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: height * 0.07,
                    width: width * 0.35,
                    decoration:
                        BoxDecoration(color: Colors.amber.withOpacity(0.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 570, left: 350),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => passwPage(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: height * 0.07,
                    width: width * 0.35,
                    decoration:
                        BoxDecoration(color: Colors.amber.withOpacity(0.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
