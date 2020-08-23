import 'package:flutter/material.dart';
import 'package:recipebook/pages/friends.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FriendsPage(),
    );
  }
}
