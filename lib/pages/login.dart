import 'package:flutter/material.dart';
import './cadastro.dart';
import '../components/input.dart';
import '../components/button.dart';
import '../components/app_bar.dart';
import '../components/drawer.dart';
import '../components/bottom_navigation.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Login'),
      drawer: MyDrawer(),
      body: Login(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.1),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InputTextField(label: "Seu melhor e-mail", maxLength: 70),
              InputTextField(label: "Informe sua senha", maxLength: 10, isPassword: true,),
              Button(title: "Login"),
              SignUpText(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Primeiro Acesso? ", style: TextStyle(color: Colors.grey)),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CadastroPage()));
          },
          child: const Text("Faça seu cadastro", style: TextStyle(color: Colors.blue)),
        ),
      ],
    );
  }
}
