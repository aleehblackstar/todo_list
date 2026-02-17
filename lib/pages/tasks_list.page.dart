import 'package:flutter/material.dart';
import 'package:todo_list/models/task.model.dart';

class TasksListPage extends StatefulWidget {
  const TasksListPage({super.key});

  @override
  State<TasksListPage> createState() => _TasksListPageState();
}

class _TasksListPageState extends State<TasksListPage> {
  final List<Task> tasks = [
    Task(title: "Estudar", description: "Aula de Flutter", completed: true),
    Task(
      title: "Ir na academia",
      description: "Fazer cardio",
      important: true,
      completed: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (ctx, index) {
            final task = tasks[index];

            return Card(
              elevation: 3,
              color: Colors.indigo[50],
              child: ListTile(
                title: Text(task.title),
                subtitle: task.description != null
                    ? Text(task.description!)
                    : null,
                leading: Checkbox(value: task.completed, onChanged: (value) {
                  setState(() {
                    task.changeStatus(value!);
                  });
                }),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      task.changeImportant();
                    });
                  },
                  icon: Icon(
                    task.important ? Icons.star : Icons.star_border,
                    color: Colors.indigo,
                  ),
                ),
                onTap: () {},
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Nova Tarefa'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
