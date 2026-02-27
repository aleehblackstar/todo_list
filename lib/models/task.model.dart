class Task {
  String title;
  String? description;
  bool completed;
  bool important;
  DateTime createdAt;

  Task({
    required this.title,
    this.description,
    this.important = false, required bool completed,
  }) : completed = false,
       createdAt = DateTime.now();   

  set changeDescription(String? changeDescription) {}

  set changeTitle(String changeTitle) {}

  void changeStatus(bool value) {
    completed = value;
  }

  void changeImportant() {
    important = !important;
  }
}
