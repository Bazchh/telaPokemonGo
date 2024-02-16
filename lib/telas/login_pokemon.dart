import 'package:flutter/material.dart';

class login_pokemon extends StatefulWidget {
  const login_pokemon({super.key});

  @override
  State<login_pokemon> createState() => _login_pokemonState();
}

class _login_pokemonState extends State<login_pokemon> {
  //
  //
  //
  //
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          child: Image.asset('assets/images/Pokémon_GO_logo.png'),
        ),
        Padding(padding: EdgeInsets.only(top: 300, bottom: 50)),
        Text(
          'Signup with',
          style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
        ),
        Padding(padding: EdgeInsets.all(6)),
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
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'GOOGLE',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(5),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Pokémon trainer club',
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber[800],
            fixedSize: Size(200, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ],
    );
  }
}
