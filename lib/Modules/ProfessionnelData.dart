import 'package:flutter/material.dart';

class Professionnel {
  final int id;
  final String nom;
  final String prenom;
  final String surnom;
  final String sexe;
  final String photo;
  final String email;
  final String telephone1;
  final String telephone2;
  final String adresse;
  final String description;
  final String ville;
  final String metier;
  final String categorie;
  final int nbrePoints;

  Professionnel({
    required this.id,
    required this.nom,
    required this.prenom,
    required this.surnom,
    required this.sexe,
    required this.photo,
    required this.email,
    required this.telephone1,
    required this.telephone2,
    required this.adresse,
    required this.description,
    required this.ville,
    required this.metier,
    required this.categorie,
    required this.nbrePoints,
  });
}

class ProfessionnelProvider with ChangeNotifier {
  List<Professionnel> _professionnels = [
    Professionnel(
      id: 1,
      nom: "KAMILI",
      prenom: "Rachid",
      surnom: "Slawi",
      sexe: "M",
      photo: "imag/avatar.jpg",
      email: "rachidkamili@gmail.com",
      telephone1: "06-11-22-33-44",
      telephone2: "",
      adresse: "Salé",
      description: "Pour tous vos travaux de peinture, veuillez me contacter",
      ville: "Salé",
      metier: "Peintre",
      categorie: "Bâtiment",
      nbrePoints: 5,
    ),
    Professionnel(
      id: 2,
      nom: "KHALDI",
      prenom: "El Ouafi",
      surnom: "",
      sexe: "M",
      photo: "imag/bureau.jpg",
      email: "khaldielouafi@gmail.com",
      telephone1: "06-22-33-44-55",
      telephone2: "",
      adresse: "Fès",
      description: "Des Coiffes à la demande avec des prix imbattables",
      ville: "Fès",
      metier: "Coiffeur",
      categorie: "Esthétique",
      nbrePoints: 3,
    ),
    Professionnel(
      id: 3,
      nom: "RAHALI",
      prenom: "Salma",
      surnom: "Coiffeura",
      sexe: "F",
      photo: "imag/artifices.jpg",
      email: "rahalisalma@gmail.com",
      telephone1: "06-33-44-55-66",
      telephone2: "",
      adresse: "Hay Riad",
      description: "Nous avons les meilleures coupes",
      ville: "Rabat",
      metier: "Coiffeur",
      categorie: "Esthétique",
      nbrePoints: 2,
    ),
  ];

  List<Professionnel> get professionnels => _professionnels;
}
