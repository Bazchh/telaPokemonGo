import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tela_de_login/telas/login.dart';
import 'package:tela_de_login/telas/login_pokemon.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(TelaDeLogin());
}

class TelaDeLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeTela(),
      title: 'Tela de login generica',
    );
  }
}

class HomeTela extends StatefulWidget {
  @override
  State<HomeTela> createState() => _HomeTelaState();
}

class _HomeTelaState extends State<HomeTela> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  void _handleGoogleSignIn(){
    try {
      GoogleAuthProvider _googleAuth = GoogleAuthProvider();
      _auth.signInWithProvider(_googleAuth);
    } catch (e) {
      print(e);
    }
  }

  void initiateState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 60, 159, 65), Colors.green.shade200],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            login_pokemon(_handleGoogleSignIn),
            //login()
          ],
        ),
      ),
    );
  }
}
