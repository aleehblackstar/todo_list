import 'package:flutter/material.dart';

class TaskDetailPage extends StatelessWidget {
  const TaskDetailPage({super.key});

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
          icon: const Icon(Icons.star_border),
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