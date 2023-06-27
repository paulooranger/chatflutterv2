import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(MyApp());
  await Firebase.initializeApp();
  FirebaseFirestore.instance
      .collection("mensagem")
      .get()
      .then((QuerySnapshot querySnapshot) {
    for (var d in querySnapshot.docs) {
      print(d.data);
    }
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatFlutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Chat Flutter v2"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
