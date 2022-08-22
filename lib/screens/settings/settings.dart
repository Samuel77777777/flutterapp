import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';

class Settings extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static const String id = 'settings';
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(.94),
        appBar: AppBar(
          title: Text(
            "Settings",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              // user card
              BigUserCard(
                cardActionWidget: IconButton(
                  icon: Icon(
                    Icons.photo_camera,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                cardColor: Colors.white,
                userName: "Samuel",
                userProfilePic: AssetImage("./assets/images/glap.png"),
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {
                      // Navigator.pushNamed(context, Home.id);
                    },
                    icons: Icons.pending_actions_outlined,
                    iconStyle: IconStyle(),
                    title: 'Register your Panel',
                    subtitle: "Register your Panel here...",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.fingerprint,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.red,
                    ),
                    title: 'Privacy',
                    subtitle: "Lock  to improve your privacy",
                  ),
                  SettingsItem(
                    onTap: () async {
                      await showInformationDialog(context);
                    },
                    icons: Icons.feedback_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.green,
                    ),
                    title: "Feedbacks",
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.info_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.purple,
                    ),
                    title: 'About',
                    subtitle: "Learn more about Solen App",
                  ),
                  SettingsItem(
                    onTap: () async {
                      const url = "https://www.google.com";
                      // ignore: deprecated_member_use
                      if (await canLaunch(url)) {
                        // ignore: deprecated_member_use
                        await canLaunch(url);
                      } else {
                        throw 'could not launch $url';
                      }
                    },
                    icons: Icons.production_quantity_limits_sharp,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.red,
                    ),
                    title: 'Purchase our products',
                    subtitle:
                        "You can purchase our product through our website",
                  ),
                ],
              ),
              // You can add a settings title
              SettingsGroup(
                settingsGroupTitle: "Account",
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.control_point_duplicate_outlined,
                    title: "Terms and Conditions",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.exit_to_app_rounded,
                    title: "Sign Out",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          bool? isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: _textEditingController,
                        decoration:
                            InputDecoration(hintText: "Whats your feedback"),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [])
                    ],
                  )),
              actions: <Widget>[
                TextButton(
                  child: Text('Done'),
                  onPressed: () async {
                    await showInformationDialo(context);
                    // Do something like updating SharedPreferences or User Settings etc.
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
        });
  }
}

Future<void> showInformationDialo(BuildContext context) async {
  return await showDialog(
      context: context,
      builder: (context) {
        final TextEditingController _textEditingController =
            TextEditingController();
        bool? isChecked = false;
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            content: Form(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text('Thank you very much')])),
            actions: <Widget>[
              TextButton(
                child: Text('Done'),
                onPressed: () async {
                  // Do something like updating SharedPreferences or User Settings etc.
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
      });
}


// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ImagePickerExample extends StatefulWidget {
//   const ImagePickerExample({Key? key}) : super(key: key);

//   @override
//   _ImagePickerExampleState createState() => _ImagePickerExampleState();
// }

// class _ImagePickerExampleState extends State<ImagePickerExample> {
//   File? _imageFile;
//   final _picker = ImagePicker();

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         ButtonBar(
//           children: <Widget>[
//             IconButton(
//               icon: const Icon(Icons.photo_camera),
//               onPressed: () async => _pickImageFromCamera(),
//               tooltip: 'Shoot picture',
//             ),
//             IconButton(
//               icon: const Icon(Icons.photo),
//               onPressed: () async => _pickImageFromGallery(),
//               tooltip: 'Pick from gallery',
//             ),
//           ],
//         ),
//         if (this._imageFile == null)
//           const Placeholder()
//         else
//           Image.file(this._imageFile!),
//       ],
//     );
//   }

//   Future<void> _pickImageFromGallery() async {
//     final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       setState(() => this._imageFile = File(pickedFile.path));
//     }
//   }

//   Future<void> _pickImageFromCamera() async {
//     final pickedFile = await _picker.pickImage(source: ImageSource.camera);
//     if (pickedFile != null) {
//       setState(() => this._imageFile = File(pickedFile.path));
//     }
//   }
// }


