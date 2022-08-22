import 'package:done/model/custom_suffix_icon.dart';
import 'package:done/screens/bottomnav.dart';
import 'package:done/screens/forgot_password.dart';
import 'package:done/screens/home_screen.dart';
import 'package:done/screens/registration_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../social.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  // static const String routesName = 'login_screen';
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // firebase
  final _auth = FirebaseAuth.instance;

  bool showSpinner = false;

  // string for displaying the error Message
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    // email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: " Enter your Email",
          labelText: "Email",
          suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Mail.svg"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: kTextColor),
          ),
        ));

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          labelText: "Enter your password",
          hintText: "Password",
          suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Lock.svg"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: kTextColor),
          ),
        ));

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blueAccent,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            signIn(emailController.text, passwordController.text);
          },
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    bool firstSubmit = false;
    bool remember = false;

    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.blue,
              ),
            )),
        backgroundColor: Colors.white,
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: Text(
                              'Welcome Back',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                          ),
                          Text(
                            'Sign in with your email and password\nor continue with social media',
                            style: TextStyle(color: kTextColor),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 45),
                          emailField,
                          SizedBox(height: 25),
                          passwordField,
                          SizedBox(height: 35),
                          Row(
                            children: [
                              Checkbox(
                                value: remember,
                                activeColor: kTextColor,
                                onChanged: (value) =>
                                    setState(() => remember = value!),
                              ),
                              Text("Remember me"),
                              Spacer(),
                              TextButton(
                                onPressed: () => Navigator.pushNamed(
                                    context, ForgotPassword.id),
                                child: Text(
                                  "Forgot password",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          loginButton,
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SocialCard(
                                icon: "assets/icons/google-icon.svg",
                                press: () {},
                              ),
                              SocialCard(
                                icon: "assets/icons/facebook-2.svg",
                                press: () {},
                              ),
                              SocialCard(
                                icon: "assets/icons/twitter.svg",
                                press: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Don't have an account? "),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RegistrationScreen()));
                                },
                                child: Text(
                                  "SignUp",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  // login function
  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        showSpinner = true;
      });

      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successful"),
                Navigator.pushNamed(context, Bottom.id),
              });

      Fluttertoast.showToast(msg: errorMessage!);
      setState(() {
        showSpinner = false;
      });
    }
  }
}

const kTextColor = Color(0xFF757575);

//  SHA1: 90:D8:CB:C2:14:9F:CD:0A:5F:6F:B7:3A:11:97:C5:6E:D4:FD:BA:83
//       SHA256: 62:CB:2E:E7:32:1B:A4:57:F2:A2:6E:3E:71:A1:73:B9:85:3D:CB:DD:8A:1C:5B:DE:B5:B2:AD:93:8A:F9:C7:D7

// contentPadding:
//     EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
// border: outlineInputBorder(),
// focusedBorder: outlineInputBorder(),
// enabledBorder: outlineInputBorder(),

// borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
//   borderSide: BorderSide(color: kTextColor),

// OutlineInputBorder outlineInputBorder() {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.circular(25),
//     borderSide: BorderSide(color: kTextColor),
//   );
// }
