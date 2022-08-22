import 'package:done/model/custom_suffix_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 197, 207, 214),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.blue,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                )
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Center(
              child: Image(image: AssetImage('assets/images/onboarding0.png')),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Get Connect to the\n Best Mentors',
              textAlign: TextAlign.center,
              style: GoogleFonts.acme(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Easy way to mentors and get\n advice solution of design',
                textAlign: TextAlign.center,
                style: GoogleFonts.acme(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.g_mobiledata,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Login with Google',
                        style: GoogleFonts.acme(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Login with Facebook',
                        style: GoogleFonts.acme(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )),
    ));
  }
}
