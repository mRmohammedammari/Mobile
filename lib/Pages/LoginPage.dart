import 'dart:io';
import 'package:ajini_prj/Packeg/Mytextfield.dart';
import 'package:ajini_prj/widget/drawer.itam.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';
import 'package:transparent_image/transparent_image.dart';

class Loginpage extends StatefulWidget {
  Loginpage({super.key});

  final usernamcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  //List<MediaFile> _selectfile = [];

  @override
  void initState() {
    super.initState();
    _requestPermissions();
  }

  Future<void> _requestPermissions() async {
    await Permission.photos.request();
  }

  File? _selectImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MydrawerItams(), //drawer c'est pour le menu de app
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            color: Theme.of(context).indicatorColor,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 40,
                ),
                //welcome back
                const Text(
                  "Bienvenue a nouveau ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //username textfield
                Mytextfield(
                  controller: widget.usernamcontroller,
                  hinttext: "pseudonyme",
                  obscyretext: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                //password textfield
                Mytextfield(
                  controller: widget.passwordcontroller,
                  hinttext: "Password",
                  obscyretext: true,
                ),
                // Password Oublier
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      " Mote de Passe Oublier !!",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ]),
                )
                //or continue with
                // google + apple or face sign-in button
                //not a member? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
