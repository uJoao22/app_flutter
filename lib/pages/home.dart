import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String valor = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: MyAppBar(title: valor),
      body: const Home(),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Container(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, indice) {
            return ListTile(
              title: Text("Item ${indice + 1}"),
              subtitle: Text("Este é o item ${indice + 1} da minha lista de itens."),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Alerta'),
                      content: Text('Você clicou no item ${indice + 1}'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Sim'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Não'),
                        ),
                      ],
                    );
                  }
                );
              }
            );
          },
        )
      ),
    );
  }
}
