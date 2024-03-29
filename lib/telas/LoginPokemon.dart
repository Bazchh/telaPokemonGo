import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPokemon extends StatelessWidget {
  final Future<User?> Function() _callbackLogin;
  const LoginPokemon(this._callbackLogin, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              ElevatedButton(
                onPressed: () async {
                  await _callbackLogin();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/google_icon.png',
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Text(
                      'GOOGLE',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(220, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: EdgeInsets.zero,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Pokémon trainer club',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
