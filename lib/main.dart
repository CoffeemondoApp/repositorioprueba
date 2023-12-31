import 'package:coffeemondo/pantallas/FirebaseMessaging.dart';
import 'package:coffeemondo/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   await FirebaseMessagingService().setupFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coffeemondo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const WidgetTree(),
    );
  }
}
