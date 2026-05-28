/* This is the blueprint. It defines exactly what a single "Task" object 
   is made of (its ID, title, and completion status) so the app can interact with 
   these structured, predictable objects instead of raw, loose text. */

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
