import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RecipeFavoritePage extends StatelessWidget {
  const RecipeFavoritePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: FloatingActionButton(
                  mini: true,
                  onPressed: null,
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xff010205),
                  ),
                  backgroundColor: Color(0xffC4C4C4).withOpacity(0.3),
                ),
              ),
              SizedBox(height: 25),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Waffle Berries Closeup',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff010205),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    'Recipe by',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffB4C2D3),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: InkWell(
                                      onTap: null,
                                      child: Text(
                                        'Collins `Damawa',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff34A853),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              SmoothStarRating(
                                allowHalfRating: true,
                                onRated: (v) {},
                                starCount: 5,
                                rating: 5,
                                size: 20.0,
                                isReadOnly: true,
                                color: Color(0xffFCAF1E),
                                borderColor: Color(0xffFCAF1E),
                                spacing: 0.0,
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffEDEDED),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.black.withOpacity(0.05),
                                    spreadRadius: 5)
                              ],
                            ),
                            child: CircleAvatar(
                              backgroundColor: Color(0xffEDEDED),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/recipe_photo_1.png', height: 190),
                          Column(
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Image.asset(
                                'assets/recipe_photo_2.png',
                                height: 85,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/recipe_photo_3.png',
                                    width: 80,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    width: 80,
                                    height: 92,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 20),
                                    decoration: BoxDecoration(
                                      color: Color(0xff909090),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(17.5),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+6',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rate Recipe',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff010205),
                                  ),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                SmoothStarRating(
                                    allowHalfRating: false,
                                    onRated: (v) {},
                                    starCount: 5,
                                    rating: 5.0,
                                    size: 24.0,
                                    isReadOnly: true,
                                    color: Color(0xffFCAF1E),
                                    borderColor: Color(0xffFCAF1E),
                                    spacing: 0.0)
                              ],
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Share',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              color: Color(0xff34A853),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ingredients',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff010205),
                              ),
                            ),
                            IngredientsItem(1, '1/2 cup water'),
                            IngredientsItem(2, '1/4 cup cornmeal'),
                            IngredientsItem(3, '2 tablespoons butter'),
                            IngredientsItem(4, '1/2 cup molasses'),
                            IngredientsItem(
                                5, '3 cups all-purpose flour, divided'),
                            IngredientsItem(6, '1 teaspoon salt'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'See directions for preparation',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        color: Color(0xff34A853),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 15),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Color(0xff979797),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xff979797),
                            ),
                            child: Text(
                              '3 Similar Recipes to try out',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GridView.count(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 15,
                              childAspectRatio: 2,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              children: [
                                SearchResultHit('Sausage & Peppers Group', 1),
                                SearchResultHit('Strawberry Wonders', 2),
                                SearchResultHit('Pro-bros', 3),
                              ]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IngredientsItem extends StatelessWidget {
  final int pos;
  final String text;
  IngredientsItem(
    this.pos,
    this.text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: Text(
              '$pos',
              style: TextStyle(fontSize: 12),
            ),
            radius: 10.0,
            backgroundColor: Color(0xffE5E6EA),
            foregroundColor: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xffB4C2D3),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchResultHit extends StatelessWidget {
  final String text;

  final int index;

  SearchResultHit(
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
