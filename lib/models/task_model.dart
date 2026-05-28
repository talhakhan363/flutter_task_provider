class Task {
  final String id;
  String title;
  bool isCompleted;

  Task({required this.id, required this.title, this.isCompleted = false});

  // A handy method to toggle the completion state
  void toggleCompleted() {
    isCompleted = !isCompleted;
  }
}
