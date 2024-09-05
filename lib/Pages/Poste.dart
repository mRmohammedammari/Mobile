import 'dart:io';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:ajini_prj/widget/drawer.itam.dart';
import 'package:ajini_prj/Modules/ProfessionnelData.dart';

class Myposte extends StatefulWidget {
  const Myposte({super.key});

  @override
  State<Myposte> createState() => _MyposteState();
}

class _MyposteState extends State<Myposte> {
  File? _selectImage;

  @override
  void initState() {
    super.initState();
    _requestPermissions();
  }

  Future<void> _requestPermissions() async {
    await Permission.photos.request();
  }

  Future<void> _pickimagesfromgallery() async {
    final retourneImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (retourneImage == null) return;
    setState(() {
      _selectImage = File(retourneImage.path);
    });
  }

  Future<void> _pickimagesfromCamera() async {
    final retourneImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (retourneImage == null) return;
    setState(() {
      _selectImage = File(retourneImage.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MydrawerItams(),
      appBar: AppBar(
        title: Text(
          "Poste",
          style: TextStyle(
            color: Theme.of(context).indicatorColor,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          posteSection(context),
          // bouttonSection,
          // descriptionSection,
        ],
      ),
    );
  }

  Widget posteSection(BuildContext context) {
    final professionnels =
        Provider.of<ProfessionnelProvider>(context).professionnels;
    return Expanded(
      child: ListView.builder(
        itemCount: professionnels.length,
        itemBuilder: (context, index) {
          final professional = professionnels[index];
          return Card(
            child: ListTile(
              leading: Image.asset(
                professional.photo ?? 'imag/default.jpg',
                width: 50,
                height: 50,
              ),
              title: Text('${professional.prenom} ${professional.nom}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Métier: ${professional.metier}'),
                  Text('Ville: ${professional.ville}'),
                  Text('Email: ${professional.email}'),
                  Text('Téléphone: ${professional.telephone1}'),
                  Text('Téléphone: ${professional.telephone2}'),
                  Text('Description: ${professional.description}'),
                  bouttonSection,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget bouttonSection = Container(
  padding: const EdgeInsets.all(10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buileBtnCulum(Colors.deepOrangeAccent, Icons.comment, "Commentaire"),
      _buileBtnCulum(Colors.deepOrangeAccent, Icons.share, "Partager")
    ],
  ),
);

Widget descriptionSection = Container(
  padding: const EdgeInsets.all(35),
  child: const Text(
    "La description de l'artisan qui explique son travail.",
    softWrap: true,
  ),
);

Column _buileBtnCulum(Color color, IconData icon, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Text(
        label,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w200,
        ),
      ),
    ],
  );
}
