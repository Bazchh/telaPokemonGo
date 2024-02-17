import 'package:flutter/material.dart';

class login_pokemon extends StatefulWidget {
  const login_pokemon({super.key});

  @override
  State<login_pokemon> createState() => _login_pokemonState();
}

class _login_pokemonState extends State<login_pokemon> {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 60, 159, 65), Colors.green.shade200],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
      ),
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
          const Padding(padding: EdgeInsets.all(6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
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
        ],
      ),
    );
  }
}
