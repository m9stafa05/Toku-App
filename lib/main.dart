// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:toku_app/screens/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//flutter build web --release && firebase init hosting && firebase deploy --only hosting -m "V 1.0.7"
void main() async {
  runApp(const TokuApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
