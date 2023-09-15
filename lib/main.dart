import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Cor principal do tema
        backgroundColor: Colors.black, // Cor de fundo preto
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLayout1 = true;

  void toggleLayout() {
    setState(() {
      isLayout1 = !isLayout1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Troca de Layout'),
      ),
      backgroundColor:
          Colors.black, // Define o plano de fundo do Scaffold como preto
      body: isLayout1 ? const Layout1() : const Layout2(),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleLayout,
        child: const Icon(Icons.swap_horiz),
      ),
    );
  }
}

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 310,
        height: 310,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.red,
            width: 4.0,
          ),
        ),
        child: const Center(
          child: Text(
            'Olá Mundo!',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}

class Layout2 extends StatelessWidget {
  const Layout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            color: Colors.black,
            width: 300.0,
            height: 300.0,
            alignment: AlignmentDirectional.center,
          ),
          Container(
            color: Colors.red,
            width: 150.0,
            height: 150.0,
            alignment: AlignmentDirectional.center,
          ),
          Container(
            color: Colors.blue,
            width: 75.0,
            height: 75.0,
            alignment: AlignmentDirectional.center,
          ),
          Container(
            color: Colors.yellow,
            width: 37.0,
            height: 37.0,
            alignment: AlignmentDirectional.center,
          ),
        ],
      ),
    );
  }
}
