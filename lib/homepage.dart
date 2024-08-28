import 'package:businista/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
            
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 12),
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  filled: true,
                  fillColor: Color.fromRGBO(223, 225, 227, 0.612),
                  hintText: "search",
                  labelStyle: TextStyle(fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
              ),
            ),


            // Container(
            //   child: Text('Trusted by 10,000+ companies around the world',
            //   style: TextStyle(color: const Color.fromARGB(255, 14, 99, 169)),),
            // ),




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

            
Container(
              child: Text('Trusted by 10,000+ companies around the world',
              style: TextStyle(color: Color.fromRGBO(5, 49, 71, 1),),),
            ),






Container(
                 height: MediaQuery.of(context).size.height / 30,
              width: MediaQuery.of(context).size.width,
),

Container(
  height: MediaQuery.of(context).size.height /15,
  width: MediaQuery.of(context).size.width,
  alignment: AlignmentDirectional.center,
  child: TextAnimator('Need Consultation Today', 
  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromRGBO(5, 49, 71, 1),),
   atRestEffect: WidgetRestingEffects.wave(),
   )
   ),


                     Container(
                      //color: Colors.black,
                        height: MediaQuery.of(context).size.height /13,
  width: MediaQuery.of(context).size.width/2,
                      child:  GestureDetector(
  onTap: () {
    // Add your onTap logic here
  },
  child: Container(
    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    decoration: BoxDecoration(
      color: Colors.blue, // Button background color
      borderRadius: BorderRadius.circular(20.0), // Circular border radius
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5), // Shadow color
          spreadRadius: 2, // Spread radius
          blurRadius: 7, // Blur radius
          offset: Offset(0, 3), // Offset
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Get A Quote',
          style: TextStyle(
            color: Colors.white, // Text color
            fontSize: 20.0, // Text size
          ),
        ),
        Icon(
          Icons.arrow_forward,
          color: Colors.white, // Icon color
          size: 24.0, // Icon size
        ),
      ],
    ),
  ),
)

                    ),

Container(height: 20,),

Image(image: AssetImage("images/prog.png"),),
   



               Container(
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
                                    //////////////////
                                    
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

Container(height: MediaQuery.of(context).size.height/60,),
Container(
  alignment: AlignmentDirectional.bottomCenter,

  //color: Colors.amber,
              height: MediaQuery.of(context).size.height/20,
              width: MediaQuery.of(context).size.width/2,
              child: InkWell(
                onTap: () async{
                                                      final Uri params = Uri(
      scheme: 'mailto',
      path: 'info@businista.com',
    );
    final String url = params.toString();
                                    await launch(url);
                },
                child: Row(
                  children: [
                    Icon(Icons.mail_outline,size: 25,color: Color.fromRGBO(5, 49, 71, 1),),
                    Container(width: 5,),
                    Text('info@businista.com',
              style: TextStyle(color: const Color.fromARGB(255, 14, 99, 169)),),
                  ],
                ),
              ),
              ),

            // Container(
            //   color: Colors.amber,
            //   padding: EdgeInsets.only(top: 10),
            //   alignment: Alignment.topCenter,
              //  height: MediaQuery.of(context).size.height / 2,
              //     width: MediaQuery.of(context).size.width,
            //       child: Image(image: AssetImage("images/prog.png"),),
            //     ),

              //               Container(
              // padding: EdgeInsets.only(top: 10),
              // alignment: Alignment.topCenter,
              //  height: MediaQuery.of(context).size.height / 2,
              //     width: MediaQuery.of(context).size.width,
              //     child: Image(image: AssetImage("images/numb.png"),),
              //   ),
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

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}


