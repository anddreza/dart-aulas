import 'package:flutter/material.dart';
import 'package:namer_app/flutter-flutterando/home_page.dart';

class LoginPage2 extends State<LoginPage2> {
  String email = '';
  String password = '';
 // const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [ 

              Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/planta-app-2.jpg')),
                Container(
                  height: 20,
                ),
              TextField(
                onChanged: (text){
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (text){
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 10),         
              RaisedButton(onPressed: () {
                if(email == 'andreza@gmail.com' && password = '123'){
                  //Quando eu quiser fazer tela sem volta é pushReplacement
                  //MaterialPageRoute(builder: (context) => HomePage())
                  Navigator.of(context).pushReplacementNamed('/home');
                } else {
                  print('Login inválido');
                }
              },
              child: Text('Entrar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Inserir uma imagem da internet
//  child: Image.network('https:google.com')),
//                 Container(