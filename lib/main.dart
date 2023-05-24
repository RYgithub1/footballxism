import 'package:flutter/material.dart';
import 'package:footballxism/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() async {
  // WidgetsFlutterBinding.ensureInitialized()  // When null error
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FOOTBALL X ISM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white30,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}