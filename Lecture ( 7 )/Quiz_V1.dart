import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(home: Scaffold(
      backgroundColor: Color(0xFF17145E),
      appBar: AppBar(title:Text('Quiz')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
            Expanded(
                flex: 5,
                child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(child: Text('Put Your Question Here',style: TextStyle(color: Colors.white,fontSize: 25),)),
            )),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green,),

                onPressed: (){},child: Center(child: Text('True',style: TextStyle(color: Colors.white,fontSize: 26),)),),
            )),
        Expanded(

            child: Padding(

          padding: const EdgeInsets.all(15.0),
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.red,),

            onPressed: (){},child: Center(child: Text('False',style: TextStyle(color: Colors.white,fontSize: 26),)),),
        )),


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: [Icon(Icons.radio)],),
            )

          ],
        ),
      ),
    ),);
  }
}
