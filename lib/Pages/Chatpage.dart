import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:ajini_prj/Packeg/Apptxtfield.dart';

class Chatpage extends StatelessWidget {
  Chatpage({super.key});
//hada controlr dyal dropdwon chaque drop dwn 3ando controlor dyalo bash t7akam fih
  TextEditingController city = TextEditingController();
  TextEditingController Sexe = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Chat",
            style: TextStyle(
              color: Theme.of(context).indicatorColor,
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView(
          children: [
            AppTextField(
                dataList: [
                  //hna fin dir data dyalak
                  SelectedListItem(name: "Oujda"),
                  SelectedListItem(name: "CasaBlanca"),
                  SelectedListItem(name: "Rabat"),
                  SelectedListItem(name: "Fes"),
                ],
                textEditingController: city,
                title: "choisir votre ville",
                hint: "Ville",
                isCitySelected: true),
            Divider(
              height: 2,
              color: Theme.of(context).primaryColor,
            ),
            AppTextField(
                dataList: [
                  //hna fin dir data dyalak
                  SelectedListItem(name: "Homme"),
                  SelectedListItem(name: "Femme"),
                ],
                textEditingController: Sexe,
                title: "Choisi votre Sexe",
                hint: "Sexe",
                isCitySelected: true),
          ],
        ) //Center(child: Text("Chat Page")),
        );
  }
}
