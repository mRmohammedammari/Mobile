import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ajini_prj/Pages/LoginPage.dart';
import 'package:ajini_prj/Pages/Poste.dart';
import 'package:ajini_prj/pages/Chatpage.dart';
import 'package:ajini_prj/Pages/CounterPage.dart';
import 'package:ajini_prj/Pages/HomePage.dart';
import 'package:ajini_prj/Pages/Client.dart';
import 'package:ajini_prj/Pages/Professionnel.dart';
import 'package:ajini_prj/Modules/ProfessionnelData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProfessionnelProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => HomePage(),
          "/Counter": (context) => const CounterPage(),
          "/Chat": (context) => Chatpage(),
          "/Client": (context) => const Myclient(),
          "/Professionnel": (context) => const MyProfessionnel(),
          "/Poste": (context) => const Myposte(),
          "/LoginPage": (context) => Loginpage(),
        },
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 25),
            displayLarge: TextStyle(
              fontSize: 45,
              color: Colors.black,
            ),
          ),
          indicatorColor: Colors.black,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
            primary: Colors.deepOrangeAccent,
            secondary: Colors.white,
          ),
        ),
        //home: HomePage(),
      ),
    );
  }
}

/*import 'package:ajini_prj/Pages/LoginPage.dart';
import 'package:ajini_prj/Pages/Poste.dart';
import 'package:ajini_prj/pages/Chatpage.dart';
import 'package:ajini_prj/Pages/CounterPage.dart';
import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'package:ajini_prj/Pages/Client.dart';
import 'package:ajini_prj/Pages/Professionnel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "/Counter": (context) => const CounterPage(),
        "/Chat": (context) => Chatpage(),
        "/Client": (context) => const Myclient(),
        "/Professionnel": (context) => const MyProfessionnel(),
        "/Poste": (context) => const Myposte(),
        "/LoginPage": (context) => const Loginpage(),
      },
      theme: ThemeData(
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 25),
            displayLarge: TextStyle(
              fontSize: 45,
              color: Colors.black,
            ),
          ),
          indicatorColor: Colors.black,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
            primary: Colors.deepOrangeAccent,
            secondary: Colors.white,
          )),
      //home: HomePage(),
    );
  }
}*/
