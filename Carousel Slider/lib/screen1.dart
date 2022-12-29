import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'screen2.dart';
class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            CarouselSlider(
              items: [



                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('images/img1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),



                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('images/img2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),





                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('images/img2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),


              ],




              options: CarouselOptions(
                height: 380.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),

            TextButton(
              style:TextButton.styleFrom(backgroundColor:  Colors.red),
              child: Text('Go Forwards To Screen 2',style: TextStyle(color: Colors.white),),
              onPressed: () {

Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));

              },
            ),
          ]

      ),
    );
  }
}
