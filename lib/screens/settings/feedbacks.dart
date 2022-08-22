import 'package:done/screens/home_screen.dart';

import 'package:done/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:done/Screens/routes.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  static const String id = '../feedback';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Notification',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Center(
          child: RefreshIndicator(
            triggerMode: RefreshIndicatorTriggerMode.onEdge,
            onRefresh: _refresh,
            child: ListView(
              children: [
                Dismissible(
                  key: const ValueKey(0),
                  background: Container(
                    color: Colors.red,
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                  child: ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: AssetImage('./assets/images/glap.png'),
                    ),
                    title: Text(' New panel out now'),
                    subtitle: Text('this is our most recent panel get it now'),
                    trailing:
                        Icon(Icons.chevron_right_outlined, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage('./assets/images/glap.png'),
                  ),
                  title: Text(' New panel out now'),
                  subtitle: Text('this is our most recent panel get it now'),
                  trailing: Icon(Icons.chevron_right_outlined),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage('./assets/images/glap.png'),
                  ),
                  title: Text(' New panel out now'),
                  subtitle: Text('this is our most recent panel get it now'),
                  trailing: Icon(Icons.chevron_right_outlined),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage('./assets/images/glap.png'),
                  ),
                  title: Text(' New panel out now'),
                  subtitle: Text('this is our most recent panel get it now'),
                  trailing: Icon(Icons.chevron_right_outlined),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage('./assets/images/glap.png'),
                  ),
                  title: Text(' New panel out now'),
                  subtitle: Text('this is our most recent panel get it now'),
                  trailing: Icon(Icons.chevron_right_outlined),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage('./assets/images/glap.png'),
                  ),
                  title: Text(' New panel out now'),
                  subtitle: Text('this is our most recent panel get it now'),
                  trailing: Icon(Icons.chevron_right_outlined),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage('./assets/images/glap.png'),
                  ),
                  title: Text(' New panel out now'),
                  subtitle: Text('this is our most recent panel get it now'),
                  trailing: Icon(Icons.chevron_right_outlined),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {},
                  autofocus: true,
                  hoverColor: Colors.blue,
                  focusColor: Colors.black,
                  leading: Icon(
                    Icons.notification_add,
                    size: 40,
                  ),
                  title: Text(' New panel out now'),
                  subtitle: Text('this is our most recent panel get it now'),
                  trailing: Icon(Icons.chevron_right_outlined),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Power {
  Key key;
  String title;
  String subtitle;
  final child;
  final leading;

  Power({
    required this.key,
    required this.title,
    required this.subtitle,
    required this.child,
    required this.leading,
  });
}

Future<void> _refresh() async {
  return Future.delayed(Duration(seconds: 2));
}
