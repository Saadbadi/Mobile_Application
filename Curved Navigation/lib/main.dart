import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen0.dart';


void main() => runApp(MaterialApp(home: MainPage(),));



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

  int _page = 0;// index

  //A key that is unique across the entire app. Global keys uniquely identify elements.
  // Global keys provide access to other objects that are associated with those elements,
  // such as BuildContext.
  // For StatefulWidgets, global keys also provide access to State.
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[

          Icon(Icons.add, size: 30), // This icon for Screen 0
          Icon(Icons.compare_arrows, size: 30),// This icon for Screen 1
          Icon(Icons.perm_identity, size: 30), // This icon for Screen 2
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,

        backgroundColor: colorsNavigation[_page], // for example, if we clicked on the first icon on the bottom navigator,Then
        // _page = 0 ==> colorsNavigation[0] = Colors.amberAccent which is the background color of Screen 0

        // if we clicked on the Second icon on the bottom navigator,Then
        //_page = 1 ==> colorsNavigation[1] = Colors.green which is the background color of Screen 1
        //and so on...

        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            //When user click on any icon the value of _page = Index
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),

      //This mean update the body of app ( i.e change to screen 1,2 ... etc)
      body:_tabItems[_page],
    );
  }
}
