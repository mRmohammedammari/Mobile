import 'package:flutter/material.dart';
import 'package:ajini_prj/widget/drawer.itam.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> listProfessionnel = [
    {
      "IdProfessionnel": 1,
      "Nom": "KAMILI",
      "Prenom": "Rachid",
      "Surnom": "Slawi",
      "Sexe": "M",
      "Photo": "imag/avatar.jpg",
      "Email": "rachidkamili@gmail.com",
      "Telephone1": "06-11-22-33-44",
      "Telephone2": "",
      "Adresse": "Salé",
      "Description": "Pour tous vos travaux de peiture, veuillez me contacter",
      "Ville": "Salé",
      "Metier": "Peintre",
      "Categorie": "Bâtiment",
      "NbrePoints": 5,
    },
    {
      "IdProfessionnel": 2,
      "Nom": "KHALDI",
      "Prenom": "El Ouafi",
      "Surnom": "",
      "Sexe": "M",
      "Photo": "imag/bureau.jpg",
      "Email": "khaldielouafi@gmail.com",
      "Telephone1": "06-22-33-44-55",
      "Telephone2": "",
      "Adresse": "Fès",
      "Description": "Des Coifes à la demande avec des prix imbatables",
      "Ville": "Fès",
      "Metier": "Coiffeur",
      "Categorie": "Esthétique",
      "NbrePoints": 3,
    },
    {
      "IdProfessionnel": 3,
      "Nom": "RAHALI",
      "Prenom": "Salma",
      "Surnom": "Coiffeura",
      "Sexe": "F",
      "Photo": "imag/artifices.jpg",
      "Email": "rahalisalma@gmail.com",
      "Telephone1": "06-33-44-55-66",
      "Telephone2": "",
      "Adresse": "Hay Riad",
      "Description": "Nous avons les meilleurs coupes",
      "Ville": "Rabat",
      "Metier": "Coiffeur",
      "Categorie": "Esthétique",
      "NbrePoints": 2,
    },
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MydrawerItams(), //drawer c'est pour le menu de app
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            color: Theme.of(context).indicatorColor,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: listProfessionnel.isEmpty
          ? Center(
              child: Text(
                "The objet liste professionnel est vide",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
            )
          : ListView.builder(
              itemCount: listProfessionnel.length,
              itemBuilder: (context, index) {
                final professionnel = listProfessionnel[index];
                return Card(
                  child: ListTile(
                    leading: Image.asset(
                        width: 50,
                        height: 50,
                        professionnel['Photo'] ?? 'assets/Images/default.jpg'),
                    title: Text(
                        '${professionnel['Prenom']} ${professionnel['Nom']}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Métier: ${professionnel['Metier']}'),
                        Text('Ville: ${professionnel['Ville']}'),
                        Text('Description: ${professionnel['Description']}'),
                        Text('Email: ${professionnel['Email']}'),
                        Text('Téléphone: ${professionnel['Telephone1']}'),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:ajini_prj/widget//drawer.itam.dart';
//
// class HomePage extends StatelessWidget {
//   final List listProfessionnel = [
//     {"Nom ": "Mohammed", "Age": 33},
//     {"Nom ": "Hicham", "Age": 32},
//     {"Nom ": "ahmed", "Age": 28},
//     {"Nom ": "adil", "Age": 55},
//   ];
//   HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const MydrawerItams(), //drawer c'est pour le menu de app
//       appBar: AppBar(
//         title: Text(
//           "Home",
//           style: TextStyle(
//             color: Theme.of(context).indicatorColor,
//           ),
//         ),
//         backgroundColor: Theme.of(context).primaryColor,
//       ),
//       body: Column(children: [
//         Center(
//           child: Text(
//             "Home Page",
//             style: Theme.of(context).textTheme.displayLarge,
//           ),
//         ),
//         ListView(
//           children: [
//             ...List.generate(listProfessionnel.length, (index) {
//               return Card(
//                 child: ListTile(
//                   title: Text(listProfessionnel[index]['Nom']),
//                 ),
//               );
//             })
//           ],
//         )
//       ]),
//     );
//   }
// }

/*List listProfessionnel = [
  {
    "IdProfessionnel": 1,
    "Nom": "KAMILI",
    "Prenom": "Rachid",
    "Surnom": "Slawi",
    "Sexe": "M",
    "Photo": "/assets/Images/avatar.jpg",
    "Email": "rachidkamili@gmail.com",
    "Telephone1": "06-11-22-33-44",
    "Telephone2": "",
    "Adresse": "Salé",
    "Description": "Pour tous vos travaux de peiture, veuillez me contacter",
    "Ville": "Salé",
    "Metier": "Peintre",
    "Categorie": "Bâtiment",
    "NbrePoints": 5,
  },
  {
    "IdProfessionnel": 2,
    "Nom": "KHALDI",
    "Prenom": "El Ouafi",
    "Surnom": "",
    "Sexe": "M",
    "Photo": "/assets/Images/bureau.jpg",
    "Email": "khaldielouafi@gmail.com",
    "Telephone1": "06-22-33-44-55",
    "Telephone2": "",
    "Adresse": "Fès",
    "Description": "Des Coifes à la demande avec des prix imbatables",
    "Ville": "Fès",
    "Metier": "Coiffeur",
    "Categorie": "Esthétique",
    "NbrePoints": 3,
  },
  {
    "IdProfessionnel": 3,
    "Nom": "RAHALI",
    "Prenom": "Salma",
    "Surnom": "Coiffeura",
    "Sexe": "F",
    "Photo": "/assets/Images/artifices.jpg",
    "Email": "rahalisalma@gmail.com",
    "Telephone1": "06-33-44-55-66",
    "Telephone2": "",
    "Adresse": "Hay Riad",
    "Description": "Nous avons les meilleurs coupes",
    "Ville": "Rabat",
    "Metier": "Coiffeur",
    "Categorie": "Esthétique",
    "NbrePoints": 2,
  },
];
*/
