// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

//import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}


// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    //var screenpadding = MediaQuery.of(context).padding;
    
    return Scaffold(
      
      body: Padding(padding: EdgeInsetsDirectional.fromSTEB(20, 2, 20, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(AssetImage('assets/images/notification_1.png',),color: Colors.black),
            Center(
                child: Text('Settings',
                style: TextStyle(
                    fontSize: 25,
                    height: 1.5,
                    color: Colors.black,
                    decorationThickness: 1.5,
                    fontWeight: FontWeight.bold, 
                ),
                ),
                ),
              ],
            ),

            Container(
                width: width,
                height: (height)/6.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 243, 248, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 68, 161, 214), //New
                        blurRadius: 25.0,
                      ),                      
                    ],                    
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                      alignment: const Alignment(-0.8, 0),
                      child: Text('Account Settings',
                        style: TextStyle(
                        fontSize: 17,
                        height: 1,
                        color: Colors.black,
                        decorationThickness: 1.5,
                        fontWeight: FontWeight.bold,                         
                       ),
                      ),),
                      Row(  
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,                
                        children: [
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                        child:SizedBox(
                        width: 110.0,
                        height: 35.0,
                        child: FloatingActionButton.extended(
                        label: Text('Reset Email',style: TextStyle(color: Colors.black),), // <-- Text
                        backgroundColor: Color.fromARGB(255, 68, 161, 214),
                        onPressed: () {},                       
                      ),),),
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(10, 10, 20, 10),
                        child:SizedBox(
                        width: 110.0,
                        height: 35.0,
                        child: FloatingActionButton.extended(
                        label: Text('Logout',style: TextStyle(color: Colors.black),), // <-- Text
                        backgroundColor: Color.fromARGB(255, 68, 161, 214),
                        onPressed: () {},                       
                      ),),),
                    ],)
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                  width: width,
                  height: (height*0.90)/5,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 243, 248, 255),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 68, 161, 214), //New
                      blurRadius: 25.0,
                      ),                      
                    ],                    
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: const Alignment(-0.8, -0.5),
                        child: Text('Reset and data usage ',
                        style: TextStyle(
                        fontSize: 17,
                        height: 1,
                        color: Colors.black,
                        decorationThickness: 1.5,
                        fontWeight: FontWeight.bold,                         
                       ),
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[ 
                        //  SvgPicture.asset(
                        //   'assets/images/Cloud_Sync.svg',
                        //   semanticsLabel: 'My SVG Image',
                        //   height: 35,
                        //   width: 35,
                        // ),
                         
                         ImageIcon(AssetImage('assets/images/Cloud_Sync.png'),color: Colors.black,),
                         Text('Reset all the data',
                          style: TextStyle(
                              fontSize: 14,
                              height: 0.7,
                              color: Colors.black,
                              decorationThickness: 1.5,
                              fontWeight: FontWeight.bold,
                          ),),
                           Padding(padding: EdgeInsetsDirectional.fromSTEB(60, 0, 17, 0),
                            child:SizedBox(
                            width: 110.0,
                            height: 35.0,
                            child: FloatingActionButton.extended(
                            label: Text('Reset Now',style: TextStyle(color: Colors.black),), // <-- Text
                            backgroundColor: Color.fromARGB(255, 68, 161, 214),
                            onPressed: () {},                        
                            ),),),
                          ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1.5,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[ 
                        //   SvgPicture.asset(
                        //   'assets/images/Cloud_Sync.svg',
                        //   semanticsLabel: 'My SVG Image',
                        //   height: 35,
                        //   width: 35,
                        // ),  
                        ImageIcon(AssetImage('assets/images/Synchronization.png'),color: Colors.black,),                     
                         Text('Sync with  devices',
                          style: TextStyle(
                              fontSize: 14,
                              height: 0.7,
                              color: Colors.black,
                              decorationThickness: 1.5,
                              fontWeight: FontWeight.bold,
                          ),),
                           Padding(padding: EdgeInsetsDirectional.fromSTEB(38, 0, 11, 7),
                            child:SizedBox(
                            width: 110.0,
                            height: 35.0,
                            child: FloatingActionButton.extended(
                            label: Text('Sync Now',style: TextStyle(color: Colors.black),), // <-- Text
                            backgroundColor: Color.fromARGB(255, 68, 161, 214),
                            onPressed: () {},                        
                            ),),),
                          ],
                      ),
                    ],
                  ),
                ),
            
            Container(
                width: width,
                height: height/3.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 243, 248, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 68, 161, 214),//New
                        blurRadius: 25.0,
                      ),                      
                    ],                    
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[ 
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                        child: new RichText(
                        text: new TextSpan(
                        text: 'Feedback',
                        style: new TextStyle(color: Colors.black,fontSize: 15),
                        recognizer: new TapGestureRecognizer()
                        ..onTap = () {},
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                        child: new RichText(
                        text: new TextSpan(
                        text: 'Privacy Policy',
                        style: new TextStyle(color: Colors.black,fontSize: 15),
                        recognizer: new TapGestureRecognizer()
                        ..onTap = () {},
                        ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                        child: new RichText(
                        text: new TextSpan(
                        text: 'Terms and conditions',
                        style: new TextStyle(color: Colors.black,fontSize: 15),
                        recognizer: new TapGestureRecognizer()
                        ..onTap = () {},
                        )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                        child: new RichText(
                        text: new TextSpan(
                        text: 'Invite friends',
                        style: new TextStyle(color: Colors.black,fontSize: 15),
                        recognizer: new TapGestureRecognizer()
                        ..onTap = () {},
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                        child: new RichText(
                        text:new TextSpan(
                        text: 'Help',
                        style: new TextStyle(color: Colors.black,fontSize: 15),
                        recognizer: new TapGestureRecognizer()
                        ..onTap = () {},
                        ),
                        ),
                      ),
                                  ],),
                  ),
                ),
            
            Center(
                child: Text('App version 1.0'),
                ),

            Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 10, 20),
                  child: ClipRRect(
                  borderRadius:  BorderRadius.circular(30),
                    child: BottomNavigationBar(
                    backgroundColor: Color.fromARGB(255, 68, 161, 214),                    
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    selectedIconTheme: IconThemeData(color: Color.fromARGB(255, 187, 242, 70),),
                    unselectedItemColor: Color.fromARGB(255, 243, 248, 255),
                    type: BottomNavigationBarType.fixed,                     
                    items:  const [
                      BottomNavigationBarItem(icon: Icon(Icons.home), label: "",),
                      BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/water.png'),color: Colors.white,),  label: "",),
                      BottomNavigationBarItem(icon: Icon(Icons.bubble_chart_outlined), label: "",),
                      BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/heart.png'),color: Colors.white,),  label: "",/*backgroundColor: Colors.white*/),
                      BottomNavigationBarItem(icon: Icon(Icons.person),  label: "",/*backgroundColor: Colors.white*/),
                    ],
                    ),
                    ),
                  ),
            ],
            ),
            )
         );
          
  }
}
