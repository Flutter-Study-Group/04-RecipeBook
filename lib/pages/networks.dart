import 'package:flutter/material.dart';

class NetworksPage extends StatelessWidget {
  const NetworksPage({Key key}) : super(key: key);

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
                      'Networks',
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
                  hintText: 'Search Networks',
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
              'Networks you joined',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff34A853),
              ),
            ),
            SizedBox(
              height: 20,
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
                    NetworkItem('Sausage & Peppers Group', 1),
                    NetworkItem('Strawberry Wonders', 2),
                    NetworkItem('Pro-bros', 3),
                    NetworkItem('Colours of Strawberry', 4),
                    NetworkItem('Food fitfam', 5),
                    NetworkItem('Veges Gang', 6),
                  ]),
            ),
            SizedBox(
              height: 29,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                onPressed: null,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xff34A853),
              ),
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
                  'Explore more networks',
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

class NetworkItem extends StatelessWidget {
  final String text;

  final int index;

  NetworkItem(
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
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff0A0A0A),
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
