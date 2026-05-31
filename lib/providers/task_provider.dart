/*  This is the brain of the app. It holds the actual list of tasks securely 
    in memory and executes all the business logic (adding, updating, deleting) 
    and is entirely independent of the visual interface. */

import 'package:flutter/material.dart';
import '../models/task_model.dart';

class TaskProvider extends ChangeNotifier {
  // The private list of tasks
  final List<Task> _tasks = [];

  // A public getter so our UI can read the tasks
  List<Task> get tasks => _tasks;

  // Task 1: Add a Task
  void addTask(String title) {
    final newTask = Task(
      id: DateTime.now().toString(), // Simple unique ID generator
      title: title,
    );
    _tasks.add(newTask);
    notifyListeners(); // 📢 Tells the UI to rebuild!
  }

  // Task 2: Update (Toggle) a Task
  void toggleTaskStatus(String id) {
    final taskIndex = _tasks.indexWhere((task) => task.id == id);
    if (taskIndex != -1) {
      _tasks[taskIndex].toggleCompleted();
      notifyListeners();
    }
  }

  // Task 4: Undo a deleted task (Insert at specific index)
  void insertTask(int index, Task task) {
    _tasks.insert(index, task);
    notifyListeners();
  }

  // Task 3: Delete a Task
  void deleteTask(String id) {
    _tasks.removeWhere((task) => task.id == id);
    notifyListeners();
  }
}
