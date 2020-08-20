import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:recase_string_extension/recase.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Swiper(
              itemCount: 2,
              itemBuilder: (context, index) {
                var type = index == 0 ? 'recipe' : 'ingredients';
                var typeOther = index == 0 ? 'ingredients' : 'recipe';
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/search_${type}_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: double.infinity,
                  height: size.height / 2.6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 47),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FloatingActionButton(
                              mini: true,
                              onPressed: null,
                              child: Icon(Icons.arrow_back),
                              backgroundColor:
                                  Color(0xffC4C4C4).withOpacity(0.5),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Swipe to search by ${typeOther}',
                                      style: TextStyle(
                                        color: Color(0xff445262),
                                        fontSize: 11,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              color: Colors.white.withOpacity(0.7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffC4C4C4)
                                      .withOpacity(index == 0 ? 1.0 : 0.5),
                                  width: index == 0 ? 6.0 : 5.0,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffC4C4C4)
                                      .withOpacity(index == 0 ? 0.5 : 1.0),
                                  width: index == 0 ? 5.0 : 6.0,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Search by ${type.titleCase}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'What ${type} are you looking for?',
                            hintStyle: TextStyle(
                              color: Color(0xff8894A2),
                              fontSize: 14,
                            ),
                            suffixIcon: Icon(Icons.search_rounded),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(top: size.height / 2.6 - 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    child: ListView(
                      padding:
                          EdgeInsets.symmetric(vertical: 23, horizontal: 35),
                      children: [
                        SearchOptionItem(text: 'My search history'),
                        Divider(),
                        SearchOptionItem(text: 'My favourite recipes'),
                        Divider(),
                        SearchOptionItem(text: 'Easy Mexican Casserole'),
                        Divider(),
                        SearchOptionItem(text: 'Thai Chicken Balls'),
                        Divider(),
                        SearchOptionItem(text: 'Honey Mustard Pork Chops'),
                        Divider(),
                        SearchOptionItem(text: 'Salsa Chicken Rice Casserole'),
                        Divider(),
                        SearchOptionItem(
                            text: 'Banana Cinnamon Roll Casserole'),
                      ],
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
                        'Explore more recipes',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff34A853),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchOptionItem extends StatelessWidget {
  final String text;
  const SearchOptionItem({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xff8894A2),
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Color(0xff8894A2),
            size: 24,
          ),
        ],
      ),
    );
  }
}
