import "package:flutter/material.dart";

class Mymenu extends StatelessWidget {
  const Mymenu({super.key});

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
                    backgroundImage: AssetImage("imag/profile.jpg"),
                    radius: 50,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("imag/profil2.jpg"),
                    radius: 25,
                  ),
                ],
              )),
          ListTile(
            leading: const Icon(Icons.home),
            trailing: const Icon(Icons.arrow_forward),
            title: const Text("Home"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/");
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            trailing: const Icon(Icons.arrow_forward),
            title: const Text("Counter"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/Counter");
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          ListTile(
            leading: const Icon(Icons.mail),
            trailing: const Icon(Icons.arrow_forward),
            title: const Text("Chat"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/Chat");
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.arrow_forward),
            title: const Text("Client"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/Client");
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.arrow_forward),
            title: const Text("Professionnel"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/Professionnel");
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.arrow_forward),
            title: const Text("Poste"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/Poste");
            },
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          ListTile(
            leading: const Icon(Icons.login),
            trailing: const Icon(Icons.arrow_forward),
            title: const Text("Login"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/LoginPage");
            },
          ),
        ],
      ),
    );
  }
}
