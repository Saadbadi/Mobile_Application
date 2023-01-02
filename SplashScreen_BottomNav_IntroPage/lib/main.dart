import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'screen1.dart';
import 'screen2.dart';
 import 'screen0.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'splashscreen.dart';

void main() => runApp(MaterialApp(
      home: SplashScreen(),
    ));


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // List of pages
  final List<Widget> _tabItems = [Screen0(), Screen1(), Screen2()];

  // Background color for a pages
  final colorsNavigation = [
    Colors.amberAccent, // Screen 0
    Colors.green, // Sccreen 1
    Colors.red, // Screen 2
  ];

  int _page = 0; // index

  //A key that is unique across the entire app. Global keys uniquely identify elements.
  // Global keys provide access to other objects that are associated with those elements,
  // such as BuildContext.
  // For StatefulWidgets, global keys also provide access to State.
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        key: _bottomNavigationKey,
        style: TabStyle.react,
        backgroundColor: Colors.green,
        items: [
          TabItem(icon: Icons.play_arrow),
          TabItem(icon: Icons.museum),
          TabItem(icon: Icons.book),
        ],
        initialActiveIndex: 0,
        onTap: (index) {
          setState(() {
            //When user click on any icon the value of _page = Index
            _page = index;
          });
        },
      ),





      //This mean update the body of app ( i.e change to screen 1,2 ... etc)
      body: _tabItems[_page],
    );
  }
}
