import 'package:flutter/material.dart';
import '../models/task.model.dart';

class AddTaks extends StatefulWidget {
  const AddTaks({super.key});

  @override
  State<AddTaks> createState() => _AddTaksState();
}

class _AddTaksState extends State<AddTaks> {
  var isImportant = false;
  var showDescription = false;

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void addTask() {
    if (!formKey.currentState!.validate()) return;

    final task = Task(
      title: titleController.text,
      description:
          descriptionController.text.isEmpty ? null : descriptionController.text,
      important: isImportant,
      completed: false,
    );

    Navigator.of(context).pop(task);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 10,
          ),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // HEADER
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Adicionar Tarefa",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
      
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 2),
                ),
      
                const SizedBox(height: 10),
      
                // TÍTULO
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "O que você quer fazer hoje?",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "O título não pode estar vazio";
                      }
                      return null;
                    },
                  ),
                ),
      
                // DESCRIÇÃO
                if (showDescription)
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextField(
                      controller: descriptionController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Adicionar informações",
                      ),
                    ),
                  ),
      
                const SizedBox(height: 10),
      
                // BOTÕES
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showDescription = true;
                          });
                        },
                        child: const Icon(Icons.sort),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isImportant = !isImportant;
                          });
                        },
                        child: Icon(
                          isImportant ? Icons.star : Icons.star_border,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: addTask,
                        child: const Text("Adicionar"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}