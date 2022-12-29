import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';

class Screen0 extends StatefulWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  _Screen0State createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 0"),
      ),
      // Drawer widget is used to provide access to different destinations and functionalities provided in your application.
      drawer: NavigationDrawer(),
    );
  }
}
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    );
  }

  Widget buildMenuItem(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(20.0),

      //First Method Try to use Column
      // Second Method use Wrap

      // A Wrap lays out each child and attempts to place the child adjacent to the previous child in the main axis,
      // given by direction, leaving spacing space in between. If there is not enough space to
      // fit the child, Wrap creates a new run adjacent to the existing children in the cross axis.

      child: Wrap(
        //runSpacing: 15.0 : gap between lines (How much space to place between the runs themselves in the cross axis.)
        runSpacing: 15,
        children: [

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen0()));
             },
          ),

          ListTile(
            leading: Icon(Icons.message),
            title: Text('Message'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
            },
          ),

          ListTile(
            leading: Icon(Icons.add),
            title: Text('Sign in'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen1()));
            },
          ),
          ListTile(
            leading: Icon(Icons.face),
            title: Text('Profile'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItem(context),
          ],
        ),
      ),
    );
  }

  }
