import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:win/page/Avis/composent/firebase.dart';

class AviApp extends StatelessWidget {
  const AviApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              composentAvis(),
            ],
          ),
        ),
      ),
    );
  }
}
