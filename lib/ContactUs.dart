import 'package:businista/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [

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



            Container(alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height/4,
                    width: MediaQuery.of(context).size.width / 1.1,
                       decoration: BoxDecoration(
                boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.25), // shadow color
        spreadRadius: 5, // spread radius
        blurRadius: 7, // blur radius
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          
          children: [

          Container(//width: MediaQuery.of(context).size.width / 1.1,
            //color: Colors.amber,
            margin: EdgeInsets.only(top: 20),
            //padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 3,),
            child: Text(
              "Dubai Office",
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromRGBO(5, 49, 71, 1) ),
            ),
            ),
          
          
          Container(
            
            margin: EdgeInsets.only(top: 10,left: 25),
            //color: Colors.yellow,
            child:Row(//mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.location_pin,color: Colors.grey[500],size: 25,),
              Container(width: 5,),
               Text(
              "API Twoer, Sheikh zaid road,Dubai",
            style: TextStyle(fontSize: 17,color:Colors.grey[500], ),
            ),
            ],)
            ),


                Container(
            
            margin: EdgeInsets.only(top: 10,left: 25),
            //color: Colors.yellow,
            child:Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Icon(Icons.phone,color: Colors.grey[500],size: 25,),
              Container(width: 5,),
               Text(
              "+971506029697",
            style: TextStyle(fontSize: 17,color:Colors.grey[500], ),
            ),
            ],)
            ),


                  Container(
            
            margin: EdgeInsets.only(top: 10,left: 25),
            //color: Colors.yellow,
            child:Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Icon(Icons.email , color: Colors.grey[500],size: 25,),
              Container(width: 5,),
               Text(
              "INFO@BUSINISTA.COM",
            style: TextStyle(fontSize: 17,color:Colors.grey[500], ),
            ),
            ],)
            ),
        ],)
            ),


Container(
  height: MediaQuery.of(context).size.height/15,
),

            InkWell(
              onTap: () {
                _openMapsApp();
              },
              child: Container(
                height: MediaQuery.of(context).size.height/2.5,
                width: MediaQuery.of(context).size.width ,
                child: Image(image: AssetImage("images/location.png"),fit: BoxFit.cover,),
              ),
            ),


Container(height: MediaQuery.of(context).size.height/45,),


             Container(
              // color: Colors.amber,
                margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                   // color: Colors.amber,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width/7,
              
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 1,color: Color.fromRGBO(214, 211, 211, 1)),),
                    child: InkWell(onTap: () async{
                                    
                                    await launch("https://www.facebook.com/busnista");
                                  },
                                  child: Image(image: AssetImage("images/facebookicon.png")),
                                  ),
                  )
                  ),
                    Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width/7,
              margin: EdgeInsets.only(left: 50),
                  child: Container(
                    //color: Colors.red,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 1,color: Color.fromRGBO(214, 211, 211, 1)),),
                    child: InkWell(onTap: () async{
                                    //////////////////
                                    await launch("https://www.linkedin.com/company/businista");
                                  },
                                  
                                  child: Image(image: AssetImage("images/LinkedIn.png")),
                                  ),
                  )
                  ),

                                      Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width/7,
              margin: EdgeInsets.only(left: 50),
                  child: Container(
                    //color: Colors.red,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 1,color: Color.fromRGBO(214, 211, 211, 1)),),
                    child: InkWell(onTap: () async{
                                                             final String? phoneNumber = await _pickPhoneNumber();

            // Check if a phone number was picked
            if (phoneNumber != null) {
              // Use the url_launcher package to launch the phone dialer with the selected phone number
              _launchPhoneCall(phoneNumber);
            }
                    },
                                  child: Icon(Icons.phone,size: 40,),
                                  // child: Image(image: AssetImage("images/reload.png")),
                                  ),
                  )
                  ),

                                      Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width/7,
              margin: EdgeInsets.only(left: 50),
                  child: Container(
                    //color: Colors.red,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 1,color: Color.fromRGBO(214, 211, 211, 1)),),
                    child: InkWell(onTap: () async{
                                    //////////////////
                                    await launch("https://businista.com/");

                                  },
                                  
                                  child: Image(image: AssetImage("images/reload.png")),
                                  ),
                  )
                  ),

                  
                ],
              ),
              ),










          ],
        ),
      ),
    );
  }


   Future<String?> _pickPhoneNumber() async {
    // Implement logic to pick a phone number from the device's contacts
    // For example, you can use the contacts_service package
    // Here, we just return a dummy phone number for demonstration purposes
    return '+971506029697';
  }

  void _launchPhoneCall(String phoneNumber) async {
    // Use the url_launcher package to launch the phone dialer with the selected phone number
    final String url = 'tel:$phoneNumber';
   try {
  await launch(url);
} catch (e) {
  print('Error launching phone call: $e');
}
  }
}


//  25.204946373503834, 55.2707613423294




  void _openMapsApp() {
    MapsLauncher.launchCoordinates(25.204946373503834, 55.2707613423294, "Dubai");
  }


