import 'package:flutter/material.dart';

void validaLogin(BuildContext context, String email, String senha) {
  if (email == "eu@gmail.com" && senha == "1234") {
    Navigator.of(context).pushNamed("/home", arguments: 'Bem vindo(a), $email');
    return;
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Login Inválido'),
        content: const Text('As credenciais de login fornecidas estão incorretas.'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Ok'),
          ),
        ],
      );
    },
  );
}
