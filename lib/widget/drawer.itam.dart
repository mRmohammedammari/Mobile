import 'package:ajini_prj/widget/Mylisttitle.dart';
import 'package:flutter/material.dart';

class MydrawerItams extends StatelessWidget {
  const MydrawerItams({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Theme.of(context).primaryColor])),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("imag/avatar.png"),
                    radius: 50,
                  ),
                  // CircleAvatar(
                  //   backgroundImage: AssetImage("imag/profil2.jpg"),
                  //   radius: 25,
                  // ),
                ],
              )),
          Mylist_title(
            title: "Home",
            itemIcon: Icon(
              Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            handler: () => {
              Navigator.of(context).pop(),
              Navigator.pushNamed(context, "/")
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          Mylist_title(
            title: "Login",
            itemIcon: Icon(
              Icons.login,
              color: Theme.of(context).primaryColor,
            ),
            handler: () => {
              Navigator.of(context).pop(),
              Navigator.pushNamed(context, "/LoginPage")
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          Mylist_title(
            title: "Métiers",
            itemIcon: Icon(
              Icons.ac_unit,
              color: Theme.of(context).primaryColor,
            ),
            handler: () => {
              Navigator.of(context).pop(),
              Navigator.pushNamed(context, "/Counter")
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          Mylist_title(
            title: "Chercher",
            itemIcon: Icon(
              Icons.access_alarm,
              color: Theme.of(context).primaryColor,
            ),
            handler: () => {
              Navigator.of(context).pop(),
              Navigator.pushNamed(context, "/Chat")
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          Mylist_title(
            title: "Client",
            itemIcon: Icon(
              Icons.accessibility,
              color: Theme.of(context).primaryColor,
            ),
            handler: () => {
              Navigator.of(context).pop(),
              Navigator.pushNamed(context, "/Client")
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          Mylist_title(
            title: "Professionnel",
            itemIcon: Icon(
              Icons.work,
              color: Theme.of(context).primaryColor,
            ),
            handler: () => {
              Navigator.of(context).pop(),
              Navigator.pushNamed(context, "/Professionnel")
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          Mylist_title(
            title: "Poste",
            itemIcon: Icon(
              Icons.post_add,
              color: Theme.of(context).primaryColor,
            ),
            handler: () => {
              Navigator.of(context).pop(),
              Navigator.pushNamed(context, "/Poste")
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
