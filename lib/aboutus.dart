import 'package:businista/MyDrawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  List<String> _images = [
    //"images/2.png",
    "images/moh.png",
     "images/amer.png",
     "images/tadbeerr.jfif",

  ];

  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(children: [
                                  Container(
              padding: EdgeInsets.only(top: 15),
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(start: 10),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2.6,
                    child: Image(image: AssetImage("images/businista_logo_row.png"),fit: BoxFit.fitWidth,),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 4,
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Builder(
                      builder: (context) => IconButton(
                        onPressed: () => Scaffold.of(context).openEndDrawer(),
                        icon: Icon(Icons.menu_outlined, color: Color.fromRGBO(5, 49, 71, 1), size: 35),
                      ),
                    ),
                  ),
                ],
              ),
            ),


Container(
 // color: Colors.amber,
                      height: MediaQuery.of(context).size.height/3.7,
                    width: MediaQuery.of(context).size.width/1.1 ,
  child: Text("At Businista, innovation is our cornerstone. We are a dynamic startup company nestled in the heart of Dubai, UAE. Driven by a passion for empowering businesses, we embarked on a journey to redefine the landscape",
  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromRGBO(5, 49, 71, 1)),
  ),
),


  Container(
     //color: Colors.yellow,
                  height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
    child:     WidgetAnimator(
    incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(),
    atRestEffect: WidgetRestingEffects.wave(),
    child: Container(
      //color: Colors.amber,
      height: 100,
      width: 80,
      //alignment: Alignment.center,
      child: Image(image: AssetImage("images/graph.png")),
    )
  ),
  ),

            Container(
              child: Text('Trusted by 10,000+ companies around the world',
              style: TextStyle(color: Color.fromRGBO(5, 49, 71, 1)),),
            ),




            Container(
               height: MediaQuery.of(context).size.height / 30,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              //color: Colors.amber,
               height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider.builder(
                itemCount: _images.length,
                carouselController: _carouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                ),
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    child: Image.asset(
                      _images[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),

        ],
        ),
      ),
    );
  }
}