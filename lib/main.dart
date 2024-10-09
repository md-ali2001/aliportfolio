import 'package:ali_portfolio/projects.dart';
import 'package:fluid_ui_design/fluid_ui_design.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Services.dart';
import 'Widgets/skills.dart';
import 'firebase_options.dart';
import 'dart:math';

class ScaleSize {
  static double textScaleFactor(BuildContext context, {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}



Future<void> main() async {


  runApp(  MaterialApp(

      home: MyHomePage(title: 'l',))

  );
}



class MyHomePage extends StatefulWidget {


  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  
  final List<Widget> _tabs = [
    MyHomePage(title: 'l',),
    Project(title: 'l',),
    Services(title:'l')
  ];

  @override



  Widget build(BuildContext context) {




return   DefaultTabController(
          length: _tabs.length,
          
                child: Scaffold(
                    backgroundColor: Colors.white,
                        appBar: PreferredSize(
                        preferredSize: Size.fromHeight(48.0),
                        child:AppBar(
                
                          bottom: TabBar(
                onTap: (int index){
                  if(index==0)
                    Navigator.pushReplacement(context,PageRouteBuilder(pageBuilder: (context,__,___)=>MyHomePage(title: 'l',),transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,),);
                
                  if(index==1)
                    Navigator.pushReplacement(context,PageRouteBuilder(pageBuilder: (context,__,___)=>Project(title: 'l',),transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,),);
                
                  if(index==2)
                    Navigator.pushReplacement(context,PageRouteBuilder(pageBuilder: (context,__,___)=>Services(title: 'l',),transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,),);
                },
                  tabs: [
                        Tab( text: 'HOME'),
                          Tab( text: 'PROJECTS'),
                    Tab(text:'SERVICES I OFFER'),
                
                
                
                  ],),
                
                
                
                          title: Text(widget.title),
                        )),
                        body: Padding(
                          padding: const EdgeInsets.only(left:10),
                          child: Column(
                                      mainAxisSize: MainAxisSize.max,

                                      children:
                                      [
                                        Text(""),
                                         Expanded(
                                           child: Row(
                                           //    mainAxisAlignment: MainAxisAlignment.center,
                                             children:[
                                               Image.asset('images/flutter.png',fit:BoxFit.contain),
                                               Image.asset('images/c++.png',fit:BoxFit.contain),
                                               Image.asset('images/java.png',fit:BoxFit.contain)
                                             ]
                                           ),
                                         ),



                                        Expanded(child: Row(
                                            //mainAxisAlignment: MainAxisAlignment.center,
                                          children: [

                                            Image.asset('images/firebase.png',fit:BoxFit.contain),
                                            Image.asset('images/oop.png',fit:BoxFit.contain),
                                            Image.asset('images/nosql.png',fit:BoxFit.contain),
                                            Image.asset('images/sql.png',fit:BoxFit.contain)
                                          ],
                                        ),

                                        ),



                                        Expanded(child: Row(
                                        //  mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset('images/cloud.png',fit:BoxFit.contain),
                                            Image.asset('images/aws.png',fit:BoxFit.contain),
                                            Image.asset('images/springboot.png',fit:BoxFit.contain)
                                          ],
                                        ),
                                        ),

                                        Divider(thickness:2,color:Colors.black),
                                        skills(context,'images/flutter2.png',"","","Flutter App Development (Android/Web platform)",100,100,0,0,0,0),
                                        skills(context,'images/springboot.png',"","", "Springboot Java backend", 50, 100,0,0,0,0),
                                        skills(context,'images/c++.png','images/java.png',"","Core Java/C/C++ Programming",60,100,50,100,0,0),
                                        skills(context,'images/firebase.png','images/cloud.png','images/aws.png',"Firebase/AWS/Google Cloud Services",50,100,50,60,70,100),
                                        skills(context,'images/oop.png',"","", "Advanced Object Oriented Programming", 50,100,0,0,0,0),
                                        skills(context,'images/nosql.png','images/sql.png',"","SQL/NOSQL Databases",50,70,50,100,0,0),
                                      ],
                                    ),
                        ),
                          ),
              
  
                    
  
  
  
  
  
  
  
  
  
  
  
  
  
          
        // This trailing comma makes auto-formatting nicer for build methods.

);
  }



}
