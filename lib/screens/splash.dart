import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ludo/screens/login.dart';
import 'package:ludo/screens/phone_num.dart';
import 'package:ludo/screens/signup.dart';

class splash extends StatelessWidget {
  const splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // Color color = HexColor.fromHex('#aabbcc');
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Color.fromARGB(255, 1, 148, 253),
        child: Column(
          // addSemanticIndexes: false,
          // //  addRepaintBoundaries = true,
          // //  addSemanticIndexes = true,
          // shrinkWrap: true,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 40, top: 40),
              child: Container(
                child: Image.asset(
                  "assets/wetransfer_l2-jpg_2022-06-01_1318/LG Logo-03.png",
                  height: size.height * 0.15,
                ),
              ),
            ),
            Text(
              "Welcome to Life Game",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: button(
                size: size,
                height: 50,
                text: "New User? Sign Up!",
                width: size.width * 0.8,
                color: Color.fromARGB(208, 66, 183, 255),
                onPressed: () {
                  Get.to(phoneAuth());
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            button(
              size: size,
              height: 50,
              textcolor: Colors.black,
              text: "Old User? Log In!",
              width: size.width * 0.8,
              color: Colors.white,
              onPressed: () {
                Get.to(LoginScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class button extends StatelessWidget {
  var onPressed;

  double height;

  var width;

  String text;

  var color;

  Color textcolor;

  button(
      {Key key,
      @required this.size,
      this.height,
      this.textcolor,
      this.onPressed,
      this.text,
      this.width,
      this.color})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      textColor: Colors.white,
      padding: const EdgeInsets.all(0),
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width as double,
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: color
            // Color.fromARGB(208, 66, 183, 255)
            ),
        // padding: const EdgeInsets.all(0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 1,
              color: textcolor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
