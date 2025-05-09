import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: MyLoginApp(),
    ),
  ));
}

class MyLoginApp extends StatefulWidget {
  @override
  _MyLoginAppState createState() => _MyLoginAppState();
}

class _MyLoginAppState extends State<MyLoginApp> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String message = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: userController,
            decoration: InputDecoration(labelText: 'Usuario'),
          ),
          TextField(
            controller: passController,
            decoration: InputDecoration(labelText: 'Contraseña'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              String user = userController.text;
              String pass = passController.text;

              if (user == '' || pass == '') {
                setState(() {
                  message = 'Completa todos los campos';
                });
              } else if (user == 'admin' && pass == '1234') {
                setState(() {
                  message = '¡Login exitoso!';
                });
              } else {
                setState(() {
                  message = 'Usuario o contraseña incorrectos';
                });
              }
            },
            child: Text('Iniciar sesión'),
          ),
          SizedBox(height: 20),
          Text(
            message,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
