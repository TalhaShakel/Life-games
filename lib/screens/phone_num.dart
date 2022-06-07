import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ludo/screens/login.dart';
import 'package:ludo/screens/signup.dart';

class phoneAuth extends StatefulWidget {
  const phoneAuth({Key key}) : super(key: key);

  @override
  State<phoneAuth> createState() => _phoneAuthState();
}

class _phoneAuthState extends State<phoneAuth> {
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController otp = TextEditingController();
  bool canShow = false;
  var temp;

  @override
  void dispose() {
    phoneNumber.dispose();
    otp.dispose();
    super.dispose();
  }

  // FirebaseAuth auth = FirebaseAuth.instance;

  bool otpVisibility = false;

  String verificationID = "";
  void loginWithPhone() async {
    // print(phoneNumber.toString());
    // auth.verifyPhoneNumber(
    //   phoneNumber: "+92" + phoneNumber.text.toString(),
    //   timeout: Duration(seconds: 60),
    //   verificationCompleted: (PhoneAuthCredential credential) async {
    //     await auth.signInWithCredential(credential).then((phonecon) {
    //       print("You are logged in successfully");
    //     });
    // },
    // verificationFailed: (FirebaseAuthException e) {
    //   print(e.message);
    // },
    // codeSent: (String verificationId, int resendToken) {
    // otpVisibility = true;
    // verificationID = verificationId;

    // setState(() {});
    // },
    // codeAutoRetrievalTimeout: (String verificationId) {},
    // );
  }

  void verifyOTP() async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationID, smsCode: otp.text);

      // await auth.signInWithCredential(credential).then(
      //   (value) {
      //     print("You are logged in successfully");
      //   },
      // );
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RegisterScreen()));
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 195, 255),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildTextField("Phone Number", phoneNumber, Icons.phone, context),
            canShow
                ? buildTextField("OTP", otp, Icons.timer, context)
                : const SizedBox(),
            !canShow ? buildSendOTPBtn("Send OTP") : buildSubmitBtn("Submit"),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
          String labelText,
          TextEditingController textEditingController,
          IconData prefixIcons,
          BuildContext context) =>
      Padding(
        padding: const EdgeInsets.all(10.00),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.5,
          child: TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(5.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(5.5),
              ),
              prefixIcon: Icon(prefixIcons, color: Colors.black),
              hintText: labelText,
              hintStyle: const TextStyle(color: Colors.black),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
      );

  Widget buildSendOTPBtn(String text) => ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        onPressed: () async {
          setState(() {
            canShow = !canShow;
          });
          loginWithPhone();
        },
        child: Text(text),
      );

  Widget buildSubmitBtn(String text) => ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        // style: ButtonStyle(
        //   backgroundColor: Colors.black.shade100
        // ),
        onPressed: () {
          verifyOTP();
          // FirebaseAuthentication().authenticateMe(temp, otp.text);
        },
        child: Text(text),
      );
}
