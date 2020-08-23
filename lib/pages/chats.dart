import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    FloatingActionButton(
                      mini: true,
                      onPressed: null,
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xff010205),
                      ),
                      backgroundColor: Color(0xffC4C4C4).withOpacity(0.3),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Chats',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 5)
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/recipebook_logo.png',
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 36),
                children: [
                  ChatItem('Adebayo Apercu',
                      'A selection of chicken dishes served together ...', 1),
                  Divider(),
                  ChatItem('Ronke Igboegwu',
                      'A selection of chicken dishes served together ...', 2),
                  Divider(),
                  ChatItem('Ekaite Akande',
                      'A selection of chicken dishes served together ...', 3),
                  Divider(),
                  ChatItem('Adedunni Nwaneri',
                      'A selection of chicken dishes served together ...', 4),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class ChatItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final int index;

  ChatItem(
    this.title,
    this.subtitle,
    this.index, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/chats_chat$index.png'),
      contentPadding: EdgeInsets.all(0),
      dense: true,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 14),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          subtitle,
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
