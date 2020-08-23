import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key key}) : super(key: key);

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
                      'Favorites',
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
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 15,
                childAspectRatio: 2,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: [
                  FavoriteItem('Sausage & Peppers Group', 1),
                  FavoriteItem('Strawberry Wonders', 2),
                  FavoriteItem('Pro-bros', 3),
                  FavoriteItem('Colours of Strawberry', 4),
                  FavoriteItem('Food fitfam', 5),
                  FavoriteItem('Veges Gang', 6),
                  FavoriteItem('Toast With Peanut Butter...', 7),
                  FavoriteItem('Waffle Berries Closeup', 8),
                  FavoriteItem('Salmon And Lox', 9),
                  FavoriteItem('Plated Bagel & Lox', 10),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.only(
                  bottom: 3,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xff34A853),
                      width: 2.0,
                    ),
                  ),
                ),
                child: Text(
                  'Explore more recipes',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff34A853),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class FavoriteItem extends StatelessWidget {
  final String text;

  final int index;

  FavoriteItem(
    this.text,
    this.index, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/recipe$index.png'),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 4,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff0A0A0A),
              ),
              softWrap: true,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 15,
              width: 15,
              child: FloatingActionButton(
                mini: true,
                backgroundColor: Colors.white,
                onPressed: null,
                child: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                  size: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
