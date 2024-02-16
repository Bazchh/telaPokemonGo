import 'package:flutter/material.dart';

class login extends StatefulWidget {
  final void Function() alterarTela;
  login({required this.alterarTela});
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _showPass = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue),
                    color: Colors.white),
                width: 230,
                child: TextFormField(
                  controller: _emailController,
                  cursorColor: Colors.blue,
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.account_circle_sharp,
                        color: Colors.blue,
                      ),
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.blue),
                    border: InputBorder.none,
                  ),
                  validator: (String? value) {
                    if (value == null) {
                      return "O email não pode estar vazio";
                    }
                    if (value.length < 5) {
                      return "O email é muito curto";
                    }
                    if (!value.contains("@")) {
                      return "O email não é válido";
                    }
                    return null;
                  },
                ),
              ),
              Padding(padding: EdgeInsets.all(2)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue),
                        color: Colors.white),
                    width: 230,
                    child: TextFormField(
                      cursorColor: Colors.blue,
                      controller: _passController,
                      style: TextStyle(color: Colors.blue),
                      decoration: InputDecoration(
                        icon: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                        ),
                        hintText: 'Senha',
                        hintStyle: TextStyle(color: Colors.blue),
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
                          return "A senha não pode estar vazio";
                        }
                        if (value.length < 5) {
                          return "A senha é muito curta";
                        }

                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(2)),
        Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.blue),
            color: Colors.white,
          ),
          child: TextButton(
            onPressed: () => {
              widget.alterarTela()
            },
            child: Text('Login', style: TextStyle(color: Colors.blue),),
          ),
        ),
      ],
    );
  }
}
