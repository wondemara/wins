import 'package:flutter/material.dart';

class acceuilApp extends StatelessWidget {
  const acceuilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              )),
          title: Text('Face Competition'),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.dark_mode,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.comment,
                )),
          ],
        ),
      ),
    );
  }
}
