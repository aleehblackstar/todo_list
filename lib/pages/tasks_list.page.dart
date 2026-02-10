import 'package:flutter/material.dart';

class TasksListPage extends StatelessWidget {
  const TasksListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarefas'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(top: 5),
              child: ListTile(
                title: Text("Marcar uma reunião"),
                subtitle: Text("Uma reunião para discutir o projeto"),
                leading: Checkbox(value: false, onChanged: (value) {}),
                trailing: Icon(Icons.star),
                tileColor: Colors.indigo[50],
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.only(top: 10),
              child: ListTile(
                title: Text("Marcar uma reunião"),
                subtitle: Text("Uma reunião para discutir o projeto"),
                leading: Checkbox(value: false, onChanged: (value) {}),
                trailing: Icon(Icons.star),
                tileColor: Colors.indigo[50],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Nova Tarefa'),
        icon: const Icon(Icons.person_add),
      ),
    );
  }
}
