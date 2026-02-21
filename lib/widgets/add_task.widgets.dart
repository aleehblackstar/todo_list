import 'package:flutter/material.dart';

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

  addTasks (){}


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Divider(thickness: 2, height: 0),
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: titleController,
              decoration:  InputDecoration(
                border: InputBorder.none,
                hintText: "O que você quer fazer hoje?",
              ),
            ),
          ),
          if (showDescription)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const TextField(
              decoration:  InputDecoration(
                border: InputBorder.none,
                hintText: "Adicionar informações",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showDescription = true;
                    });
                  },
                  child: Icon(Icons.sort)),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isImportant = !isImportant;
                    });
                  },
                  child: Icon(isImportant ? Icons.star : Icons.star_border),
                ),
                const Spacer(),
                TextButton(onPressed: () {}, child: const Text("Adicionar"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
