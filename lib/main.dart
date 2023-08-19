import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task2/firebase_options.dart';
import 'package:task2/layout.dart';
import 'package:task2/ui/screens/Login_page.dart';
import 'package:task2/ui/screens/SignUp_page.dart';
import 'package:task2/ui/screens/counter_page.dart';
import 'package:task2/ui/screens/home_page.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}











