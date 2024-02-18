import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class login_pokemon extends StatelessWidget {
  final Future<User?> Function() _callbackLogin;

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
                      width: 25,
                    ),
                    const Text(
                      'GOOGLE',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: EdgeInsets.zero,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(5),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Pokémon trainer club',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber[800],
              fixedSize: const Size(200, 50),
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
