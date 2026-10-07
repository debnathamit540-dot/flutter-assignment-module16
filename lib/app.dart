import 'package:flutter/material.dart';
import 'package:flutter_assignment_module16/assignment_page.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module 16 Assignment',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,

        elevatedButtonTheme: ElevatedButtonThemeData(

          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),

        ),

        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(fontSize: 18),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        textTheme: TextTheme(bodySmall: TextStyle(fontSize: 18)),
      ),

      routes: {
        '/assignment': (context) => AssignmentPage()
      },
      initialRoute: '/assignment',

    );
  }
}
