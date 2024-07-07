import 'package:flutter/material.dart';

class policyPage extends StatefulWidget {
  const policyPage({super.key});

  @override
  State<policyPage> createState() => _policyPageState();
}

class _policyPageState extends State<policyPage> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return Scaffold(
      body: Container(
          //policy
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
                    child: Image.asset("images/policy.jpg"),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
