import 'package:flutter/material.dart';
import 'pagina_login.dart';

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: LoginPage(),
    );
  }
}