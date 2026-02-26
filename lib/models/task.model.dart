class Task {
  String title;
  String? description;
  bool completed;
  bool important;

  Task({
    required this.title,
    this.description,
    this.important = false,
    required this.completed,
  });

  set changeDescription(String? changeDescription) {}

  set changeTitle(String changeTitle) {}

  changeStatus(bool value) {
    completed = value;
  }

  changeImportant() {
    important = !important;
  }
}
