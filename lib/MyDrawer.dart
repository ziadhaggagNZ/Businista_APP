import 'package:businista/ContactUs.dart';
import 'package:businista/aboutus.dart';
import 'package:businista/homepage.dart';
import 'package:businista/services.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
         Container(height: 20,),


 Image(image: AssetImage("images/name.png")),


  Container(
    // color: Colors.amber,
    //               height: MediaQuery.of(context).size.height / 4,
    //           width: MediaQuery.of(context).size.width,
    child:     WidgetAnimator(
    incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(),
    atRestEffect: WidgetRestingEffects.size(),
    child: Container(
      //color: Colors.amber,
      height: 100,
      width: 80,
      //alignment: Alignment.center,
      child: Image(image: AssetImage("images/reload.png")),
    )
  ),
  ),
           Container(height: 30,),

            ListTile(
              title: Row(
                children: [
                  Icon(Icons.home,size: 35,color: Color.fromRGBO(5, 49, 71, 1),),
                  Container(width: 10,),
                  Text("Home",style: TextStyle(fontSize: 25,color:  Color.fromRGBO(5, 49, 71, 1)),),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homepage(),),);
              },
            ),

                       Container(height: 30,),

            ListTile(
              title: Row(
                children: [
                  Icon(Icons.business_center_rounded,size: 35,color: Color.fromRGBO(5, 49, 71, 1),),
                  Container(width: 10,),
                  Text("Services",style: TextStyle(fontSize: 25,color:  Color.fromRGBO(5, 49, 71, 1)),),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Services(),),);
              },
            ),

            
                       Container(height: 30,),

            ListTile(
              title: Row(
                children: [
                  Icon(Icons.people_alt,size: 35,color: Color.fromRGBO(5, 49, 71, 1),),
                  Container(width: 10,),
                  Text("About Us",style: TextStyle(fontSize: 25,color:  Color.fromRGBO(5, 49, 71, 1)),),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Aboutus(),),);
              },
            ),



            
                       Container(height: 30,),

            ListTile(
              title: Row(
                children: [
                  Icon(Icons.location_on,size: 35,color: Color.fromRGBO(5, 49, 71, 1),),
                  Container(width: 10,),
                  Text("Contact Us",style: TextStyle(fontSize: 25,color:  Color.fromRGBO(5, 49, 71, 1)),),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Contactus(),),);
              },
            ),
          ],
        ),
      );
  }
}