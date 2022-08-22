import 'package:done/screens/forgot_password.dart';
import 'package:done/screens/home/hompage.dart';
import 'package:done/screens/home_screen.dart';
import 'package:done/screens/settings/feedbacks.dart';
import 'package:done/screens/settings/settings.dart';
import 'package:done/screens/testscreen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Bottom extends StatefulWidget {
  @override
  State<Bottom> createState() => _BottomState();

  static const String id = 'bottomnav';
}

class _BottomState extends State<Bottom> {
  //initialization
  int selectedIndex = 0;
  Widget _myContacts = MyHomePage();
  Widget _myEmails = MyHomePage();
  Widget _mEmails = Settings();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.getBody(),
      bottomNavigationBar: CurvedNavigationBar(
          index: this.selectedIndex,
          height: 50,
          backgroundColor: Colors.white,
          color: Colors.blue,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int index) {
            this.onTapHandler(index);
          },
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(Icons.notifications, color: Colors.white),
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ]),
    );
  }

  // this is the  function that makes you navigate using bottomNavigationBar

  getBody() {
    if (this.selectedIndex == 0) {
      return this._myContacts;
    } else if (this.selectedIndex == 1) {
      return this._myEmails;
    } else {
      return this._mEmails;
    }
  }

  void onTapHandler(int index) {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Title of Application',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {


//   @override
//   State<StatefulWidget> createState() {
//     return MyHomePageState();
//   }

// }

// class MyHomePageState extends State<MyHomePage> {
//   int selectedIndex = 0;
//   Widget _myContacts = MyContacts();
//   Widget _myEmails = MyEmails();
//   Widget _myProfile = MyProfile();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("BottomNavigationBar Example"),
//       ),
//       body:  this.getBody(),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: this.selectedIndex,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.contacts),
//             title: Text("Contacts"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.mail),
//             title: Text("Emails"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             title: Text("Profile"),
//           )
//         ],
//         onTap: (int index) {
//           this.onTapHandler(index);
//         },
//       ),
//     );
//   }

  

// class MyContacts extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("Contacts"));
//   }
// }

// class MyEmails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("Emails"));
//   }
// }

// class MyProfile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("Profile"));
//   }
// }