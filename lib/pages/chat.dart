import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Text(
                      'Adebayo Apercu',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                        child: Icon(Icons.more_horiz, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Center(
                child: Text(
                  'Today',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffB4C2D3),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ChatMessage('Wow.', true),
                    ChatMessage('So what is going on?', true),
                    ChatMessage(
                        'A selection of chicken dishes served together on a white table. This is comfort food heaven.',
                        false),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
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
                            fillColor: Colors.white.withOpacity(0.5),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Type a message...',
                            hintStyle: TextStyle(
                              color: Color(0xff8894A2),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    FloatingActionButton(
                      mini: true,
                      onPressed: null,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      backgroundColor: Color(0xff34A853),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String message;
  final bool me;
  const ChatMessage(
    this.message,
    this.me, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        decoration: BoxDecoration(
          color: me ? Color(0xffE5E6EA) : Color(0xff34A853).withOpacity(0.35),
          borderRadius: BorderRadius.all(
            Radius.circular(17.5),
          ),
        ),
        child: Text(
          message,
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
