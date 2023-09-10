import 'package:flutter/material.dart';

import 'lista_jogos.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Loja de Jogos'),
      ),      
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login de Usuário',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (text) {
                      senha = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (email == 'teste@email.com' && senha == '123456'){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ListPage())
                      );
                    } else {
                      print('Email e/ou senha inválidos!');
                    }
                  },
                  child: Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}