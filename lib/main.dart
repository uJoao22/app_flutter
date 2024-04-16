import 'package:flutter/material.dart';
import './pages/login.dart';
import './pages/cadastro.dart';
import './pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      initialRoute: '/',
      routes: {
        "/cadastro": (context) => const CadastroPage(),
        "/home": (context) => const HomePage(),
      },
    );
  }
}
