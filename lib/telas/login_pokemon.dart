import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class login_pokemon extends StatelessWidget {
  final void Function() _callbackLogin;
  const login_pokemon(this._callbackLogin);

  @override
  Widget build(BuildContext context) {
    

    return Container(
      /*  decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 60, 159, 65), Colors.green.shade200],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
      ), */
      child: Column(
        children: <Widget>[
          SizedBox(
            child: Image.asset('assets/images/Pokémon_GO_logo.png'),
          ),
          const Padding(padding: EdgeInsets.only(top: 50, bottom: 50)),
          const Text(
            'Signup with',
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.blueGrey,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignInButton(
                Buttons.google,
                text: 'Entrar com o google',
                onPressed: () async {
                  _callbackLogin();
                }
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Pokémon trainer club',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber[800],
              fixedSize: const Size(220, 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 250))
        ],
      ),
    );
  }
}
