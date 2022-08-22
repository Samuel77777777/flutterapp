import 'package:flutter/material.dart';
import '../model/custom_suffix_icon.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  static const String id = "Forgot Password";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.blue),
            onPressed: () {
              // passing this to our root
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SafeArea(
            child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(36),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'forgot Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Please enter your email and we will send you a\n a link to return to your account',
                  style: TextStyle(color: Color(0xFF757575)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 150,
                ),
                buildEmailFormField(),
                SizedBox(
                  height: 50,
                ),
                loginButton,
              ]),
            ),
          ),
        )),
      ),
    );
  }
}

TextFormField buildEmailFormField() {
  return TextFormField(
    validator: (email) {},
    decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Mail.svg"),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    keyboardType: TextInputType.emailAddress,
  );
}

final loginButton = Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(30),
  color: Colors.blueAccent,
  child: MaterialButton(
      minWidth: 500,
      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      onPressed: () {},
      child: Text(
        "Continue",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      )),
);
