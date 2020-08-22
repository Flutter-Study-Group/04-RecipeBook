import 'package:flutter/material.dart';
import 'package:recipebook/pages/chats.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatsPage(),
    );
  }
}
