import 'package:businista/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  
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





          ////////////////////////////////////////////////////////
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(children: [
              Container(width: MediaQuery.of(context).size.width/70,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/1.png"),fit: BoxFit.fill,),
                ),
              ),
               Container(width: MediaQuery.of(context).size.width/50,),
               InkWell(
                  onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/2a.png"),fit: BoxFit.fill,),
                ),
              ),
            ],),
          ),
          /////////////////////////////////////////////////////////
          ////////////////////////////////////////////////////////
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(children: [
              Container(width: MediaQuery.of(context).size.width/70,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/3.png"),fit: BoxFit.fill,),
                ),
              ),
               Container(width: MediaQuery.of(context).size.width/50,),
               InkWell(
                  onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/4.png"),fit: BoxFit.fill,),
                ),
              ),
            ],),
          ),
          /////////////////////////////////////////////////////////
                    ////////////////////////////////////////////////////////
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(children: [
              Container(width: MediaQuery.of(context).size.width/70,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/5.png"),fit: BoxFit.fill,),
                ),
              ),
               Container(width: MediaQuery.of(context).size.width/50,),
               InkWell(
                  onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/6.png"),fit: BoxFit.fill,),
                ),
              ),
            ],),
          ),
          /////////////////////////////////////////////////////////
           ////////////////////////////////////////////////////////
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(children: [
              Container(width: MediaQuery.of(context).size.width/70,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/7.png"),fit: BoxFit.fill,),
                ),
              ),
               Container(width: MediaQuery.of(context).size.width/50,),
               InkWell(
                  onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/8.png"),fit: BoxFit.fill,),
                ),
              ),
            ],),
          ),
          /////////////////////////////////////////////////////////
          /// ////////////////////////////////////////////////////////
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(children: [
              Container(width: MediaQuery.of(context).size.width/70,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/9.png"),fit: BoxFit.fill,),
                ),
              ),
               Container(width: MediaQuery.of(context).size.width/50,),
               InkWell(
                  onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/10.png"),fit: BoxFit.fill,),
                ),
              ),
            ],),
          ),
          /////////////////////////////////////////////////////////
          /// ////////////////////////////////////////////////////////
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(children: [
              Container(width: MediaQuery.of(context).size.width/70,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/11.png"),fit: BoxFit.fill,),
                ),
              ),
               Container(width: MediaQuery.of(context).size.width/50,),
               InkWell(
                  onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/12.png"),fit: BoxFit.fill,),
                ),
              ),
            ],),
          ),
          /////////////////////////////////////////////////////////
          /// ////////////////////////////////////////////////////////
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(children: [
              Container(width: MediaQuery.of(context).size.width/70,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/13.png"),fit: BoxFit.fill,),
                ),
              ),
               Container(width: MediaQuery.of(context).size.width/50,),
               InkWell(
                  onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/14.png"),fit: BoxFit.fill,),
                ),
              ),
            ],),
          ),
          /////////////////////////////////////////////////////////
          /// ////////////////////////////////////////////////////////
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(children: [
              Container(width: MediaQuery.of(context).size.width/70,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/15.png"),fit: BoxFit.fill,),
                ),
              ),
               Container(width: MediaQuery.of(context).size.width/50,),
               InkWell(
                  onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/16.png"),fit: BoxFit.fill,),
                ),
              ),
            ],),
          ),
          /////////////////////////////////////////////////////////
          /// ////////////////////////////////////////////////////////
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(children: [
              Container(width: MediaQuery.of(context).size.width/70,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/17.png"),fit: BoxFit.fill,),
                ),
              ),
               Container(width: MediaQuery.of(context).size.width/50,),
               InkWell(
                  onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/18.png"),fit: BoxFit.fill,),
                ),
              ),
            ],),
          ),
          /////////////////////////////////////////////////////////
          /// ////////////////////////////////////////////////////////
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Row(children: [
              Container(width: MediaQuery.of(context).size.width/70,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/19.png"),fit: BoxFit.fill,),
                ),
              ),
               Container(width: MediaQuery.of(context).size.width/50,),
               InkWell(
                  onTap: () {
                  
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/2.1 ,
                  child: Image(image: AssetImage("images/20.png"),fit: BoxFit.fill,),
                ),
              ),
            ],),
          ),
          /////////////////////////////////////////////////////////
        ],),
      ),
    );
  }


     
}






