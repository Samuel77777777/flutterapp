import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginDesign extends StatefulWidget {
  LoginDesign({Key? key}) : super(key: key);

  @override
  State<LoginDesign> createState() => _LoginDesignState();
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
}

class _LoginDesignState extends State<LoginDesign> {
  @override
  Widget build(BuildContext context) {
    final passwordField = TextFormField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      validator: ((value) {}),
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email,
            color: Colors.blue,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey)),
          hintText: 'Email',
          labelText: 'email',
          contentPadding: EdgeInsets.all(20)),
    );
    final emailField = TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      validator: ((value) {}),
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.blue,
          ),
          suffixIcon: Icon(Icons.remove_red_eye),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey)),
          hintText: 'Password',
          labelText: 'Password',
          contentPadding: EdgeInsets.all(20)),
    );

    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: SafeArea(
        child: Column(children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Welcome',
                style: GoogleFonts.acme(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Back',
                style: GoogleFonts.acme(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
              child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      passwordField,
                      SizedBox(
                        height: 30,
                      ),
                      emailField,
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password',
                            style: GoogleFonts.acme(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Text('Sign In'))))
                    ],
                  ),
                ),
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
