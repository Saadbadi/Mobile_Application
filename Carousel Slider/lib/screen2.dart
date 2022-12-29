import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Page"),),
        body: ListView(children: [
          CarouselSlider(
            items: [
              ContainerImage(
                ImagePath: 'images/img1.jpg',
              ),
              ContainerImage(
                ImagePath: 'images/img2.jpg',
              ),
              ContainerImage(
                ImagePath: 'images/img3.jpg',
              ),
            ],


            options: CarouselOptions(
              //For more details
              //https://pub.dev/documentation/carousel_slider/latest/carousel_options/CarouselOptions-class.html
              height: 300,
              // Determines if current page should be larger than the side images, creating a feeling of depth in the carousel.
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              // The fraction of the viewport that each page should occupy.
              viewportFraction: 0.8,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent Activity ",style: TextStyle(fontWeight: FontWeight.w900),),
                Text("See all ")
              ],
            ),
          ),

          Cards(),
          Cards(),
          Cards(),
          Cards(),
          Cards(),
          Cards(),
          Cards(),
          Cards(),
          Cards(),
          Cards(),
          Cards(),
          Cards(),
        ]));
  }
}














class Cards extends StatelessWidget {
  const Cards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: FlutterLogo(size: 56.0),
        title: Text('Two-line ListTile'),
        subtitle: Text('Here is a second line'),
        trailing: Text('\$ 299.0'),
      ),
      
    );
  }
}















class ContainerImage extends StatelessWidget {
  ContainerImage({required this.ImagePath});

  final ImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(ImagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
