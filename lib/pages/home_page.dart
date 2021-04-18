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
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Icon(Icons.person_outline, size: 120.0, color: Colors.green),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Peso em (kg)",
                  labelStyle: TextStyle(color: Colors.green),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0)),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Altura em (cm)",
                  labelStyle: TextStyle(color: Colors.green),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0)),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Container(
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Calcular',
                    style: TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.normal)),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
              ),
            ),
          ),
          Text("Info",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0))
        ]),
      ),
    );
  }
}
