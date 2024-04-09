import 'package:flutter/material.dart';
import '../components/input.dart';
import '../components/button.dart';
import '../components/slider.dart';
import '../components/radio/radio_list.dart';
import '../components/switch/switch_list.dart';
import '../components/app_bar.dart';
import '../components/bottom_navigation.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Cadastre-se'),
      body: Cadastro(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  String? genero = "";
  bool notifyEmail = false;
  bool notifyCelular = false;
  double font = 14;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const InputTextField(label: "Nome", maxLength: 20),
            const InputTextField(label: "Data de Nascimento", maxLength: 10),
            const InputTextField(label: "E-mail", maxLength: 70),
            const InputTextField(label: "Senha", isPassword: true, maxLength: 20),
            ListRadio(title: "Gênero:", value: genero, onChanged: (String? value) => setState(() => genero = value)),
            ListSwitch(
              title: "Notificações:",
              label1: 'E-mail', value1: notifyEmail, onChanged1: (bool value) => setState(() => notifyEmail = value),
              label2: 'Celular', value2: notifyCelular, onChanged2: (bool value) => setState(() => notifyCelular = value),
            ),
            const Button(title: "Registrar"),
            SliderDouble(title: "Tamanho da fonte:", value: font, min: 10, max: 30, divisions: 10, onChanged: (double value) => setState(() => font = value)),
          ],
        ),
      ),
    );
  }
}
