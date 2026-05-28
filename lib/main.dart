import 'package:flutter/material.dart'; // Flutter's core UI toolkit
import 'package:provider/provider.dart'; // Provider package for state management
import 'providers/task_provider.dart'; // Importing our custom TaskProvider to manage the state of tasks
import 'screens/home_screen.dart'; // Importing the HomeScreen where the main UI will be built, which will interact with TaskProvider to display and manage tasks

void main() {
  runApp(
    // Injecting the Provider at the root level
    ChangeNotifierProvider(create: (context) => TaskProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      debugShowCheckedModeBanner: false,
      // Setting up a sleek, deep charcoal dark mode as a baseline for the UI enhancements later
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: const ColorScheme.dark(
          primary: Colors.tealAccent, // Neon teal accents
          secondary: Colors.teal,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(), // The main screen of the app where tasks will be displayed and managed
    );
  }
}
