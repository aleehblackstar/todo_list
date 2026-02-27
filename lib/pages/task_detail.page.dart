import 'package:flutter/material.dart';
import 'package:todo_list/models/task.model.dart';

class TaskDetailPage extends StatefulWidget {
  final Task task;

  const TaskDetailPage({super.key, required this.task});

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  late bool isImportant;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    isImportant = widget.task.important;
    titleController.text = widget.task.title;
    descriptionController.text = widget.task.description ?? "";
  }

  void saveTask() {
    if (formKey.currentState?.validate() != true) {
      return;
    }

    final updatedTask = Task(
      title: titleController.text,
      description: descriptionController.text.isEmpty
          ? null
          : descriptionController.text,
      important: isImportant,
      completed: widget.task.completed,
    );

    Navigator.pop(context, updatedTask);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isImportant = !isImportant;
              });
            },
            icon: Icon(!isImportant ? Icons.star_border : Icons.star),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(labelText: "Título"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "O título é obrigatório";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Descrição",
                  ),
                  maxLines: 5,
                ),
                const SizedBox(height: 40),
                TextButton(
                  onPressed: saveTask,
                  child: const Text("Salvar Tarefa"),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Data de Criação: 12/05/2024"),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop("delete");
                      },
                      icon: const Icon(Icons.delete_outline),
                      iconSize: 28,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
