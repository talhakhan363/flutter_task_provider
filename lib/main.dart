import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/task_provider.dart';
// import 'screens/home_screen.dart'; --> We will build this next!

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
      home: const Scaffold(body: Center(child: Text("Home Screen Goes Here"))),
    );
  }
}
