import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Instagram UI Clone';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Post',
      style: optionStyle,
    ),
    Text(
      'Activity',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset('images/camera.png', height: 35),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Image.asset(
                    'images/title.png',
                    fit: BoxFit.cover,
                    height: 40,
                  ),
                ),
              ],
            ),
            Image.asset('images/message.png', height: 35),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/home.png'),
            ),
            activeIcon: ImageIcon(
              AssetImage('images/home_active.png'),
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/search.png'),
            ),
            activeIcon: ImageIcon(
              AssetImage('images/search_active.png'),
            ),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/post.png'),
            ),
            activeIcon: ImageIcon(
              AssetImage('images/post_active.png'),
            ),
            title: Text('Post'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/heart.png'),
            ),
            activeIcon: ImageIcon(
              AssetImage('images/heart_active.png'),
            ),
            title: Text('Activity'),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('images/profilepicture.png'),
            ),
            activeIcon: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('images/profilepicture.png'),
                    ))),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black87,
        iconSize: 35.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}

Widget HomeScreen() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 16.0),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('images/profilepicture.png'),
                        ),
                        Positioned(
                            right: -2.0,
                            bottom: -2.0,
                            child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('images/addstory.png'),
                                )))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Your Story'),
                    ),
                  ],
                ),
              ),

              //instagrammer1
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 8.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 39,
                      backgroundImage: AssetImage('images/storybackground.jpg'),
                      child: CircleAvatar(
                        radius: 37,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('images/instagrammer1.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                          width: 100,
                          child: Center(
                              child: Text(
                            'mariaballik',
                            overflow: TextOverflow.ellipsis,
                          ))),
                    ),
                  ],
                ),
              ),

              //instagrammer2
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 8.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 39,
                      backgroundImage: AssetImage('images/storybackground.jpg'),
                      child: CircleAvatar(
                        radius: 37,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('images/instagrammer2.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                          width: 100,
                          child: Center(
                              child: Text(
                            'travelwitheufrozina',
                            overflow: TextOverflow.ellipsis,
                          ))),
                    ),
                  ],
                ),
              ),

              //instagrammer3
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 8.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 39,
                      backgroundImage: AssetImage('images/storybackground.jpg'),
                      child: CircleAvatar(
                        radius: 37,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('images/instagrammer3.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                          width: 100,
                          child: Center(
                              child: Text(
                            'stefanihalman',
                            overflow: TextOverflow.ellipsis,
                          ))),
                    ),
                  ],
                ),
              ),

              //instagrammer4
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 8.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 39,
                      backgroundImage: AssetImage('images/storybackground.jpg'),
                      child: CircleAvatar(
                        radius: 37,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('images/instagrammer4.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                          width: 100,
                          child: Center(
                              child: Text(
                            'benandkristenea',
                            overflow: TextOverflow.ellipsis,
                          ))),
                    ),
                  ],
                ),
              ),

              //instagrammer5
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 8.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('images/instagrammer5.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        width: 100,
                        child: Center(
                          child: Text(
                            'lifeoflalabu',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //instagrammer6
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 8.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('images/instagrammer6.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        width: 100,
                        child: Center(
                          child: Text(
                            'mamarosiebella',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Column(
          children: <Widget>[
            Post(
              true,
              1,
              'mariaballik',
              'San Francisco, California',
            ),
          ],
        )
      ],
    ),
  );
}

Widget Post(hasStory, numOfUser, name, location) {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              hasStory
                  ? smallProfileWithStory(numOfUser)
                  : smallProfileWithoutStory(numOfUser),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily:
                          Platform.isAndroid ? 'Roboto' : 'Neue Helvetica',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(location,
                      style: TextStyle(
                        fontFamily:
                            Platform.isAndroid ? 'Roboto' : 'Neue Helvetica',
                      )),
                ],
              )
            ],
          ),
          Image.asset(
            'images/more.png',
            width: 40,
          )
        ],
      ),
      Image.asset('images/instagrammer' + numOfUser.toString() + '_post.png'),
    ],
  );
}

Widget smallProfileWithStory(numOfUser) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage('images/storybackground.jpg'),
        child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/instagrammer$numOfUser.png'),
            ))),
  );
}

Widget smallProfileWithoutStory(numOfUser) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage('images/instagrammer$numOfUser.png'),
    ),
  );
}
