import 'package:ajini_prj/Packeg/Apptxtfield.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';

class Myclient extends StatelessWidget {
  const Myclient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Client",
          style: TextStyle(
            color: Theme.of(context).indicatorColor,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const NewClientForm(),
    );
  }
}

class NewClientForm extends StatefulWidget {
  const NewClientForm({super.key});

  @override
  _NewClientFormState createState() => _NewClientFormState();
}

class _NewClientFormState extends State<NewClientForm> {
  String _Surnom = '';
  String _nom = '';
  String _prenom = '';
  String _adresse = '';
  String _telephone = '';
  String _telephone2 = '';

  late TextEditingController _surnomController;
  late TextEditingController _nomController;
  late TextEditingController _prenomController;
  late TextEditingController _adresseController;
  late TextEditingController _telephoneController;
  late TextEditingController _telephone2Controller;

  TextEditingController city = TextEditingController();
  TextEditingController Sexe = TextEditingController();

  @override
  void initState() {
    super.initState();
    _surnomController = TextEditingController(text: _Surnom);
    _nomController = TextEditingController(text: _nom);
    _prenomController = TextEditingController(text: _prenom);
    _adresseController = TextEditingController(text: _adresse);
    _telephoneController = TextEditingController(text: _telephone);
    _telephone2Controller = TextEditingController(text: _telephone2);
  }

  @override
  void dispose() {
    _surnomController.dispose();
    _nomController.dispose();
    _prenomController.dispose();
    _adresseController.dispose();
    _telephoneController.dispose();
    _telephone2Controller.dispose();
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
          Divider(
            height: 2,
            color: Theme.of(context).indicatorColor,
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
            color: Theme.of(context).indicatorColor,
          ),

          // la fin des dropdownliste
          const SizedBox(height: 10.0),

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
                    Sexe.text = ' ';
                    city.text = ' ';

                    _surnomController.clear();
                    _nomController.clear();
                    _prenomController.clear();
                    _adresseController.clear();
                    _telephoneController.clear();
                    _telephone2Controller.clear();
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

/*
  ici separateur pour modifier form client regle probleme de focus dans les textfield
  */
//}
/* String _Surnom = '';
  String _nom = '';
  String _prenom = '';
  String _adresse = '';
  String _telephone = '';

  TextEditingController city = TextEditingController();
  TextEditingController Sexe = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            key: Key("surnom"),
            decoration: InputDecoration(
              labelText: 'Surnom',
              labelStyle: TextStyle(color: Theme.of(context).primaryColor),
              prefixIcon: Icon(Icons.people_sharp),
              prefixIconColor: Theme.of(context).primaryColor,

              // border: OutlineInputBorder(),
            ),
            controller: TextEditingController(text: _Surnom),
            onChanged: (value) {
              setState(() {
                _Surnom = value;
              });
            },
          ),
          SizedBox(height: 10.0),
          TextField(
            key: Key("nom"),
            decoration: InputDecoration(
              labelText: 'Nom',
              labelStyle: TextStyle(color: Theme.of(context).primaryColor),
              prefixIcon: Icon(Icons.person),
              prefixIconColor: Theme.of(context).primaryColor,
              // border: OutlineInputBorder(),
            ),
            controller: TextEditingController(text: _nom),
            onChanged: (value) {
              setState(() {
                _nom = value;
              });
            },
          ),
          SizedBox(height: 10.0),
          TextField(
            key: Key("Prenom"),
            decoration: InputDecoration(
              labelText: 'Prénom',
              labelStyle: TextStyle(color: Theme.of(context).primaryColor),
              prefixIcon: Icon(Icons.person),
              prefixIconColor: Theme.of(context).primaryColor,
              //  border: OutlineInputBorder(),
            ),
            controller: TextEditingController(text: _prenom),
            onChanged: (value) {
              setState(() {
                _prenom = value;
              });
            },
          ),
          SizedBox(height: 10.0),
          TextField(
            key: Key("adresse"),
            decoration: InputDecoration(
              labelText: 'Adresse',
              labelStyle: TextStyle(color: Theme.of(context).primaryColor),
              prefixIcon: Icon(Icons.cabin),
              prefixIconColor: Theme.of(context).primaryColor,
              //  border: OutlineInputBorder(),
            ),
            controller: TextEditingController(text: _adresse),
            onChanged: (value) {
              setState(() {
                _adresse = value;
              });
            },
          ),
          SizedBox(height: 10.0),
          TextField(
            key: Key("Telephone"),
            decoration: InputDecoration(
              labelText: 'Téléphone',
              labelStyle: TextStyle(color: Theme.of(context).primaryColor),
              prefixIcon: Icon(Icons.phone_android),
              prefixIconColor: Theme.of(context).primaryColor,
              //  border: OutlineInputBorder(),
            ),
            controller: TextEditingController(text: _telephone),
            onChanged: (value) {
              setState(() {
                _telephone = value;
              });
            },
          ),
          SizedBox(height: 10.0),
          //les dropdownliste
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

          //la fin des dropdownliste
          SizedBox(height: 10.0),

          // DropdownButtonFormField(
          //   key: const Key("reg"),
          //   value: _region,
          //   items: ['casa', 'rabat']
          //       .map((label) => DropdownMenuItem(
          //             value: label,
          //             child: Text(label),
          //           ))
          //       .toList(),
          //   onChanged: (value) {
          //     setState(() {
          //       _region = value.toString();
          //     });
          //   },
          //   decoration: InputDecoration(labelText: 'ville'),
          // ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Ajouter ici la logique pour valider les données
                  print('Validation des données');
                },
                child: Text('Valider'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Ajouter ici la logique pour annuler
                  print('Annulation');
                },
                child: Text('Annuler'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Ajouter ici la logique pour vider les champs
                  setState(() {
                    _nom = '  ';
                    _prenom = ' ';
                    _adresse = ' ';
                    _telephone = ' ';
                    Sexe.text = ' ';
                    city.text = ' ';
                  });
                },
                child: Text('Vider champs'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/
