import 'package:flutter/material.dart';

class ventana2 extends StatelessWidget {
  const ventana2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 132, 145, 153),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Tareas Completadas"),
      ),
    );
  }
}
