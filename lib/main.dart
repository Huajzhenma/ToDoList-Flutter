import 'package:flutter/material.dart';
import 'package:flutter_visual_code/factory/task_factory.dart';
import 'package:flutter_visual_code/models/task.dart';
import 'package:flutter_visual_code/pages/ventana2.dart';

void main() {
  runApp(MaterialAppCustom());
}

class MaterialAppCustom extends StatelessWidget {
  const MaterialAppCustom();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatelessWidget {
  ToDoList({super.key});

  List<Task> tasks = TaskFactory().generateTask();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 132, 145, 153),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: const IconButton(
            icon: Icon(Icons.check),
            tooltip: 'Lista de tareas',
            onPressed: null,
          ),
          title: const Text("Lista de tareas"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  children: tasks
                      .map((task) => Container(
                            height: 50,
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 240, 205, 8)),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(Icons.arrow_circle_right_outlined),
                                Text(task.name()),
                                task.status()
                                    ? const Icon(Icons.check_box)
                                    : const Icon(
                                        Icons.check_box_outline_blank_outlined),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ventana2()))
                },
                child: const Text("Ver lista de tareas realizadas"),
              ),
            )
          ],
        ));
  }
}
