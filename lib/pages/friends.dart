import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      'Friends',
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
            SizedBox(
              height: 36,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Search Friends',
                  hintStyle: TextStyle(
                    color: Color(0xff8894A2),
                    fontSize: 14,
                  ),
                  suffixIcon: Icon(Icons.search_rounded),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'My Friends',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff34A853),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 36),
                children: [
                  FriendItem('Adebayo Apercu', '100K Friends', 1),
                  FriendItem('Ronke Igboegwu', '200 Friends', 2),
                  FriendItem('Ekaite Akande', '10K Friends', 3),
                  FriendItem('Adedunni Nwaneri', '190 Friends', 4),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class FriendItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final int index;

  FriendItem(
    this.title,
    this.subtitle,
    this.index, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              offset: Offset(0, 5),
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/people$index.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            FlatButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Remove Friend',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              color: Color(0xff979797),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
