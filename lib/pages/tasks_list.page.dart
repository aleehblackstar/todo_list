import 'package:flutter/material.dart';

class TasksListPage extends StatelessWidget {
  const TasksListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              elevation: 3,
              color: Colors.indigo[50],
              child: ListTile(
                title: Text("Marcar uma reunião"),
                subtitle: Text("Uma reunião para discutir o projeto"),
                leading: Checkbox(value: false, onChanged: (value) {}),
                trailing: Icon(Icons.star, color: Colors.indigo),
                onTap: () {},
              ),
            ),

            Card(
              elevation: 3,
              color: Colors.indigo[50],
              child: ListTile(
                title: Text("Marcar uma reunião"),
                subtitle: Text("Uma reunião para discutir o projeto"),
                leading: Checkbox(value: false, onChanged: (value) {}),
                trailing: Icon(
                  Icons.star),
                  iconColor: Colors.indigo,
                onTap: () {},
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
