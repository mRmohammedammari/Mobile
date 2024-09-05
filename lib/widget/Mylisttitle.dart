import 'package:flutter/material.dart';

class Mylist_title extends StatelessWidget {
 final String title;
 final Icon itemIcon;
 final Function() handler;

  const Mylist_title({super.key,required this.title,
    required this.itemIcon,
    required this.handler
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: itemIcon,
      trailing: const Icon(Icons.arrow_forward),
      title: Text(title),
      onTap: handler,
    );
  }
}
