import 'package:flutter/material.dart';
import 'package:todo_list/models/task.model.dart';

class TaskDetailPage extends StatefulWidget {
  final Task task;


   TaskDetailPage({super.key, required this.task});

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  final titleController = TextEditingController(text: widget.task.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {},
          icon: Icon(!widget.task.important ? Icons.star_border : Icons.star),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: "Título",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Descrição",
                ),
                maxLines: 5,
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Salvar Tarefa"),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Data de Criação: 12/05/2024"),
                  IconButton(onPressed: () {}, 
                  icon: const Icon(Icons.delete_outline),
                  iconSize: 28,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}