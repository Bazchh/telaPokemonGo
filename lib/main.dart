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
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User?> _loginGoogle() async{
  try {
    GoogleSignInAccount? loginEmContaGoogle = await googleSignIn.signIn();
    GoogleSignInAuthentication autenticacaoDeLogin = await loginEmContaGoogle!.authentication;

    AuthCredential credencial = GoogleAuthProvider.credential(
      accessToken: autenticacaoDeLogin.accessToken,
      idToken: autenticacaoDeLogin.idToken
    );

    UserCredential resultadoDeAutent = await _auth.signInWithCredential(credencial);
    User? usuario = resultadoDeAutent.user;

    /* 
      adicionar logica para salvar dados no banco de dados do firebase aqui
    */
    return usuario;
    
  } catch (e) {
    print('Falha ao realizar login');
    return null;
  }
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
            login_pokemon(_loginGoogle),
            //login()
          ],
        ),
      ),
    );
  }
}
