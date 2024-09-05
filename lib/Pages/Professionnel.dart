// import 'package:ajini_prj/Packeg/Apptxtfield.dart';
// import 'package:drop_down_list/model/selected_list_item.dart';
// import 'package:flutter/material.dart';
//
// class MyProfessionnel extends StatelessWidget {
//   MyProfessionnel({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Professionnel",
//           style: TextStyle(
//             color: Theme.of(context).indicatorColor,
//           ),
//         ),
//         backgroundColor: Theme.of(context).indicatorColorindicatorColor,
//       ),
//       body: NewProfessionnelForm(),
//     );
//   }
// }
//
// class NewProfessionnelForm extends StatefulWidget {
//   @override
//   _NewProfessionnelFormState createState() => _NewProfessionnelFormState();
// }
//
// class _NewProfessionnelFormState extends State<NewProfessionnelForm> {
//   String _Surnom = '';
//   String _nom = '';
//   String _prenom = '';
//   String _adresse = '';
//   String _telephone = '';
//   String _telephone2 = '';
//   String _Description = '';
//
//   TextEditingController city = TextEditingController();
//   TextEditingController Sexe = TextEditingController();
//   TextEditingController Metrier = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: EdgeInsets.all(20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           TextField(
//             //key: Key("surnom"),
//
//             textDirection: TextDirection.ltr,
//             focusNode: FocusScope.of(context).focusedChild,
//             textAlign: TextAlign.left,
//
//             decoration: InputDecoration(
//               labelText: 'Surnom',
//               labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
//               prefixIcon: Icon(Icons.people_sharp),
//               prefixIconColor: Theme.of(context).indicatorColor,
//
//               // border: OutlineInputBorder(),
//             ),
//             controller: TextEditingController(text: _Surnom),
//             onChanged: (value) {
//               setState(() {
//                 _Surnom = value;
//               });
//             },
//           ),
//           SizedBox(height: 10.0),
//           TextField(
//             key: Key("nom"),
//             decoration: InputDecoration(
//               labelText: 'Nom',
//               labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
//               prefixIcon: Icon(Icons.person),
//               prefixIconColor: Theme.of(context).indicatorColor,
//               // border: OutlineInputBorder(),
//             ),
//             controller: TextEditingController(text: _nom),
//             onChanged: (value) {
//               setState(() {
//                 _nom = value;
//               });
//             },
//           ),
//           SizedBox(height: 10.0),
//           TextField(
//             key: Key("Prenom"),
//             decoration: InputDecoration(
//               labelText: 'Prénom',
//               labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
//               prefixIcon: Icon(Icons.person),
//               prefixIconColor: Theme.of(context).indicatorColor,
//               //  border: OutlineInputBorder(),
//             ),
//             controller: TextEditingController(text: _prenom),
//             onChanged: (value) {
//               setState(() {
//                 _prenom = value;
//               });
//             },
//           ),
//           SizedBox(height: 10.0),
//           TextField(
//             key: Key("adresse"),
//             decoration: InputDecoration(
//               labelText: 'Adresse',
//               labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
//               prefixIcon: Icon(Icons.cabin),
//               prefixIconColor: Theme.of(context).indicatorColor,
//               //  border: OutlineInputBorder(),
//             ),
//             controller: TextEditingController(text: _adresse),
//             onChanged: (value) {
//               setState(() {
//                 _adresse = value;
//               });
//             },
//           ),
//           SizedBox(height: 10.0),
//           TextField(
//             key: Key("Telephone"),
//             decoration: InputDecoration(
//               labelText: 'Téléphone',
//               labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
//               prefixIcon: Icon(Icons.phone_android),
//               prefixIconColor: Theme.of(context).indicatorColor,
//               //  border: OutlineInputBorder(),
//             ),
//             controller: TextEditingController(text: _telephone),
//             onChanged: (value) {
//               setState(() {
//                 _telephone = value;
//               });
//             },
//           ),
//           SizedBox(height: 10.0),
//           TextField(
//             key: Key("Telephone2"),
//             decoration: InputDecoration(
//               labelText: 'Téléphone 2 ',
//               labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
//               prefixIcon: Icon(Icons.phone_android),
//               prefixIconColor: Theme.of(context).indicatorColor,
//               //  border: OutlineInputBorder(),
//             ),
//             controller: TextEditingController(text: _telephone),
//             onChanged: (value) {
//               setState(() {
//                 _telephone2 = value;
//               });
//             },
//           ),
//           SizedBox(height: 10.0),
//           //les dropdownliste
//           AppTextField(
//               dataList: [
//                 //hna fin dir data dyalak
//                 SelectedListItem(name: "Homme"),
//                 SelectedListItem(name: "Femme"),
//               ],
//               textEditingController: Sexe,
//               title: "Sexe",
//               hint: "Sexe",
//               isCitySelected: true),
//           AppTextField(
//               dataList: [
//                 //hna fin dir data dyalak
//                 SelectedListItem(name: "Oujda"),
//                 SelectedListItem(name: "Casablanca"),
//                 SelectedListItem(name: "Rabat"),
//                 SelectedListItem(name: "Fes"),
//               ],
//               textEditingController: city,
//               title: "Ville",
//               hint: "Ville",
//               isCitySelected: true),
//           Divider(
//             height: 2,
//             color: Theme.of(context).indicatorColor,
//           ),
//           AppTextField(
//               dataList: [
//                 //hna fin dir data dyalak
//                 SelectedListItem(name: "Plombier"),
//                 SelectedListItem(name: "Mecanique"),
//                 SelectedListItem(name: "Zlayji"),
//                 SelectedListItem(name: "Seramique"),
//                 SelectedListItem(name: "Ellectrecien"),
//                 SelectedListItem(name: "Réparateur froid"),
//                 SelectedListItem(name: "Sedoure"),
//                 SelectedListItem(name: "Menuisier"),
//                 SelectedListItem(name: "Menuisier alluminuim"),
//                 SelectedListItem(name: "Peinture"),
//               ],
//               textEditingController: Metrier,
//               title: "Métier",
//               hint: "Métier",
//               isCitySelected: true),
//
//           //la fin des dropdownliste
//           SizedBox(height: 10.0),
//
//           TextField(
//             key: Key("Description"),
//             decoration: InputDecoration(
//               focusedBorder: OutlineInputBorder(),
//               labelText: 'Description ',
//               labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
//               prefixIcon: Icon(Icons.text_fields_rounded),
//               prefixIconColor: Theme.of(context).indicatorColor,
//               //  border: OutlineInputBorder(),
//             ),
//             controller: TextEditingController(text: _Description),
//             onChanged: (value) {
//               setState(() {
//                 _Description = value;
//               });
//             },
//           ),
//
//           // DropdownButtonFormField(
//           //   key: const Key("reg"),
//           //   value: _region,
//           //   items: ['casa', 'rabat']
//           //       .map((label) => DropdownMenuItem(
//           //             value: label,
//           //             child: Text(label),
//           //           ))
//           //       .toList(),
//           //   onChanged: (value) {
//           //     setState(() {
//           //       _region = value.toString();
//           //     });
//           //   },
//           //   decoration: InputDecoration(labelText: 'ville'),
//           // ),
//           SizedBox(height: 20.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   // Ajouter ici la logique pour valider les données
//                   print('Validation des données');
//                 },
//                 child: Text('Valider'),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   // Ajouter ici la logique pour annuler
//                   print('Annulation');
//                 },
//                 child: Text('Annuler'),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   // Ajouter ici la logique pour vider les champs
//                   setState(() {
//                     _nom = '  ';
//                     _prenom = ' ';
//                     _adresse = ' ';
//                     _telephone = ' ';
//                     _telephone2 = '';
//                     _Surnom = '';
//                     _Description = '';
//                     Sexe.text = ' ';
//                     city.text = ' ';
//                     Metrier.text = '';
//                   });
//                 },
//                 child: Text('Vider champs'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:ajini_prj/Packeg/Apptxtfield.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';

class MyProfessionnel extends StatelessWidget {
  const MyProfessionnel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Professionnel",
          style: TextStyle(
            color: Theme.of(context).indicatorColor,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const NewProfessionnelForm(),
    );
  }
}

class NewProfessionnelForm extends StatefulWidget {
  const NewProfessionnelForm({super.key});

  @override
  _NewProfessionnelFormState createState() => _NewProfessionnelFormState();
}

class _NewProfessionnelFormState extends State<NewProfessionnelForm> {
  String _Surnom = '';
  String _nom = '';
  String _prenom = '';
  String _adresse = '';
  String _telephone = '';
  String _telephone2 = '';
  String _Description = '';

  late TextEditingController _surnomController;
  late TextEditingController _nomController;
  late TextEditingController _prenomController;
  late TextEditingController _adresseController;
  late TextEditingController _telephoneController;
  late TextEditingController _telephone2Controller;
  late TextEditingController _descriptionController;

  TextEditingController city = TextEditingController();
  TextEditingController Sexe = TextEditingController();
  TextEditingController Metrier = TextEditingController();

  @override
  void initState() {
    super.initState();
    _surnomController = TextEditingController(text: _Surnom);
    _nomController = TextEditingController(text: _nom);
    _prenomController = TextEditingController(text: _prenom);
    _adresseController = TextEditingController(text: _adresse);
    _telephoneController = TextEditingController(text: _telephone);
    _telephone2Controller = TextEditingController(text: _telephone2);
    _descriptionController = TextEditingController(text: _Description);
  }

  @override
  void dispose() {
    _surnomController.dispose();
    _nomController.dispose();
    _prenomController.dispose();
    _adresseController.dispose();
    _telephoneController.dispose();
    _telephone2Controller.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              labelText: 'Surnom',
              labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
              prefixIcon: const Icon(Icons.people_sharp),
              prefixIconColor: Theme.of(context).indicatorColor,
            ),
            controller: _surnomController,
            onChanged: (value) {
              setState(() {
                _Surnom = value;
              });
            },
          ),
          const SizedBox(height: 10.0),
          TextField(
            key: const Key("nom"),
            decoration: InputDecoration(
              labelText: 'Nom',
              labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
              prefixIcon: const Icon(Icons.person),
              prefixIconColor: Theme.of(context).indicatorColor,
            ),
            controller: _nomController,
            onChanged: (value) {
              setState(() {
                _nom = value;
              });
            },
          ),
          const SizedBox(height: 10.0),
          TextField(
            key: const Key("Prenom"),
            decoration: InputDecoration(
              labelText: 'Prénom',
              labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
              prefixIcon: const Icon(Icons.person),
              prefixIconColor: Theme.of(context).indicatorColor,
            ),
            controller: _prenomController,
            onChanged: (value) {
              setState(() {
                _prenom = value;
              });
            },
          ),
          const SizedBox(height: 10.0),
          TextField(
            key: const Key("adresse"),
            decoration: InputDecoration(
              labelText: 'Adresse',
              labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
              prefixIcon: const Icon(Icons.cabin),
              prefixIconColor: Theme.of(context).indicatorColor,
            ),
            controller: _adresseController,
            onChanged: (value) {
              setState(() {
                _adresse = value;
              });
            },
          ),
          const SizedBox(height: 10.0),
          TextField(
            key: const Key("Telephone"),
            decoration: InputDecoration(
              labelText: 'Téléphone',
              labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
              prefixIcon: const Icon(Icons.phone_android),
              prefixIconColor: Theme.of(context).indicatorColor,
            ),
            controller: _telephoneController,
            onChanged: (value) {
              setState(() {
                _telephone = value;
              });
            },
          ),
          const SizedBox(height: 10.0),
          TextField(
            key: const Key("Telephone2"),
            decoration: InputDecoration(
              labelText: 'Téléphone 2 ',
              labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
              prefixIcon: const Icon(Icons.phone_android),
              prefixIconColor: Theme.of(context).indicatorColor,
            ),
            controller: _telephone2Controller,
            onChanged: (value) {
              setState(() {
                _telephone2 = value;
              });
            },
          ),
          const SizedBox(height: 10.0),
          // les dropdownliste
          AppTextField(
            dataList: [
              // hna fin dir data dyalak
              SelectedListItem(name: "Homme"),
              SelectedListItem(name: "Femme"),
            ],
            textEditingController: Sexe,
            title: "Sexe",
            hint: "Sexe",
            isCitySelected: true,
          ),
          AppTextField(
            dataList: [
              // hna fin dir data dyalak
              SelectedListItem(name: "Oujda"),
              SelectedListItem(name: "Casablanca"),
              SelectedListItem(name: "Rabat"),
              SelectedListItem(name: "Fes"),
            ],
            textEditingController: city,
            title: "Ville",
            hint: "Ville",
            isCitySelected: true,
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          AppTextField(
            dataList: [
              // hna fin dir data dyalak
              SelectedListItem(name: "Plombier"),
              SelectedListItem(name: "Mecanique"),
              SelectedListItem(name: "Zlayji"),
              SelectedListItem(name: "Seramique"),
              SelectedListItem(name: "Ellectrecien"),
              SelectedListItem(name: "Réparateur froid"),
              SelectedListItem(name: "Sedoure"),
              SelectedListItem(name: "Menuisier"),
              SelectedListItem(name: "Menuisier alluminuim"),
              SelectedListItem(name: "Peinture"),
            ],
            textEditingController: Metrier,
            title: "Métier",
            hint: "Métier",
            isCitySelected: true,
          ),

          // la fin des dropdownliste
          const SizedBox(height: 10.0),

          TextField(
            key: const Key("Description"),
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(),
              labelText: 'Description ',
              labelStyle: TextStyle(color: Theme.of(context).indicatorColor),
              prefixIcon: const Icon(Icons.text_fields_rounded),
              prefixIconColor: Theme.of(context).indicatorColor,
            ),
            minLines: 1, // Hauteur minimale
            maxLines: 5,
            controller: _descriptionController,
            onChanged: (value) {
              setState(() {
                _Description = value;
              });
            },
          ),

          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Ajouter ici la logique pour valider les données
                  print('Validation des données');
                },
                child: const Text('Valider'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Ajouter ici la logique pour annuler
                  print('Annulation');
                },
                child: const Text('Annuler'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Ajouter ici la logique pour vider les champs
                  setState(() {
                    _nom = '  ';
                    _prenom = ' ';
                    _adresse = ' ';
                    _telephone = ' ';
                    _telephone2 = '';
                    _Surnom = '';
                    _Description = '';
                    Sexe.text = ' ';
                    city.text = ' ';
                    Metrier.text = '';
                    _surnomController.clear();
                    _nomController.clear();
                    _prenomController.clear();
                    _adresseController.clear();
                    _telephoneController.clear();
                    _telephone2Controller.clear();
                    _descriptionController.clear();
                  });
                },
                child: const Text('Vider champs'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
