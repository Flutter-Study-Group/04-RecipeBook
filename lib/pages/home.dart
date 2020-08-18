import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xffE5E5E5),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Welcome David',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(
                          'assets/home_avatar.png',
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 40),
                          child: GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              HomeItem(
                                'Recipes',
                                Color(0xff096B91),
                              ),
                              HomeItem(
                                'Chats',
                                Color(0xff82C6E6),
                              ),
                              HomeItem(
                                'Networks',
                                Color(0xff79C8A6),
                              ),
                              HomeItem(
                                'Friends',
                                Color(0xff946222),
                              ),
                              HomeItem(
                                'Favorites',
                                Color(0xffFF3B30),
                              ),
                              HomeItem(
                                'Uploads',
                                Color(0xffFFBD49),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color: Color(0xff8894A2),
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Notifications',
                                        style: TextStyle(
                                          color: Color(0xff34A853),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      FlatButton(
                                        onPressed: null,
                                        padding: EdgeInsets.all(0),
                                        child: Text(
                                          'Clear notifications',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: ListView(
                                      padding: EdgeInsets.all(0),
                                      children: [
                                        NotificationItem(
                                            'Adebayo Apercu sent you a message',
                                            'Yesterday'),
                                        Divider(),
                                        NotificationItem(
                                            'Oladele Tamilore replied your message',
                                            'Monday 22 October'),
                                        Divider(),
                                        NotificationItem(
                                            '20 people added your recipe as a favourite',
                                            'Friday 19 October'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String subtitle;
  NotificationItem(
    this.title,
    this.subtitle, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Image.asset('assets/home_dot.png'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff010205),
                  ),
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xffB4C2D3),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeItem extends StatelessWidget {
  final String type;
  final Color color;

  HomeItem(
    this.type,
    this.color, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/home_${type.toLowerCase()}.png',
            height: 35,
          ),
          Text(
            type,
            style: TextStyle(color: color, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
