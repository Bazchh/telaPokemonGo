import 'package:flutter/material.dart';
import 'package:tela_de_login/components/FormsPerso.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _showPass = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void showValidationSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                FormsPerso(
                  controller: _emailController,
                  cursorColor: Colors.blue,
                  style: TextStyle(color: Colors.blue),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.blue),
                  inputDecoration: InputDecoration(
                    errorStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    icon: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.account_circle_sharp,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null) {
                      return "";
                    }

                    if (value == '') {
                      return "O email não pode estar vazio";
                    }

                    if (value.length < 5) {
                      return "O email é muito curto";
                    }
                    if (!value.contains("@") || !value.contains(".com")) {
                      return "formato inválido";
                    }
                    return null;
                  },
                  obscureText: false,
                ),
                const Padding(padding: EdgeInsets.all(6)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FormsPerso(
                      cursorColor: Colors.blue,
                      controller: _passController,
                      style: TextStyle(color: Colors.blue),
                      hintStyle: const TextStyle(color: Colors.blue),
                      inputDecoration: InputDecoration(
                        errorStyle: TextStyle(color: Colors.grey),
                        errorMaxLines: 1,
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                        ),
                        hintText: 'Senha',
                        hintStyle: const TextStyle(color: Colors.blue),
                        border: InputBorder.none,
                        suffixIcon: GestureDetector(
                          child: Icon(
                              _showPass == false
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.blue),
                          onTap: () {
                            setState(() {
                              _showPass = !_showPass;
                            });
                          },
                        ),
                      ),
                      obscureText: _showPass == false ? true : false,
                      validator: (String? value) {
                        if (value == null) {
                          return "";
                        }
                        if (value == '') {
                          return "A senha não pode estar vazio";
                        }
                        if (value.length < 5) {
                          return "A senha é muito curta";
                        }

                        return null;
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.all(6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.blue),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () {
                    /* if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const login_pokemon(),
                        ),
                      );
                    } */
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.blue),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Dados processados com sucesso'),
                      ));
                      /* Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => (const login_pokemon()),
                        ),
                      ); */
                    }
                  },
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
