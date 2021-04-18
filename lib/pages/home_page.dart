import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [IconButton(icon: Icon(Icons.refresh), onPressed: () {})],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Icon(Icons.person_outline, size: 120.0, color: Colors.green),
        TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Peso em (kg)",
                labelStyle: TextStyle(color: Colors.green)),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green, fontSize: 25.0)),
        TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Altura em (cm)",
                labelStyle: TextStyle(color: Colors.green)),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green, fontSize: 25.0))
      ]),
    );
  }
}
