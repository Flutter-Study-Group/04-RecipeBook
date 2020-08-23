import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:recase_string_extension/recase.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/profile_background.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Color(0xff191919).withOpacity(0.4),
                    BlendMode.darken,
                  ),
                ),
              ),
              width: double.infinity,
              height: size.height / 2.1,
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
                          backgroundColor: Color(0xffC4C4C4).withOpacity(0.5),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Edit',
                                  style: TextStyle(
                                      color: Color(0xff414144),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          color: Colors.white.withOpacity(0.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage(
                          'assets/profile_avatar.png',
                        ),
                      ),
                    ),
                    Text(
                      'David Opeyemi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProfileStats(1293, 'friends'),
                        ProfileStats(80, 'networks'),
                        ProfileStats(124, 'uploads'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height / 2.1 - 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff010205),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Combining data, design, and machine learning to build intelligent products and services that improve people\'s lives.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffB4C2D3),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Likes',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff010205),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Wrap(
                      children: [
                        ProfileTag('Yam'),
                        ProfileTag('Ground Nut'),
                        ProfileTag('Sausage'),
                        ProfileTag('Excercise'),
                        ProfileTag('Giving'),
                        ProfileTag('Artificial Intelligence'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileStats extends StatelessWidget {
  final int number;
  final String type;
  ProfileStats(
    this.number,
    this.type, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$number',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xffE5E5E5),
          ),
        ),
        Text(
          type.toUpperCase(),
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Color(0xffDBDBDB),
          ),
        )
      ],
    );
  }
}

class ProfileTag extends StatelessWidget {
  final String tag;
  const ProfileTag(
    this.tag, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          border: Border.all(
            color: Color(0xffB4C2D3),
          ),
        ),
        child: Text(
          tag,
          style: TextStyle(fontSize: 12, color: Color(0xff8894A2)),
        ),
      ),
    );
  }
}
