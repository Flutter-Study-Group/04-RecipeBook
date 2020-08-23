import 'package:flutter/material.dart';
import 'package:recipebook/pages/friend_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FriendProfilePage(),
    );
  }
}
