class Task {
  String title;
  String? description;
  bool completed;
  bool important;

  Task({
    required this.title,
    this.description,
    this.important = false, required bool completed,
  }) : completed = false;
}
