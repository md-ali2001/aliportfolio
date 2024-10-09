import 'package:ali_portfolio/projects.dart';
import 'package:flutter/material.dart';
import 'Widgets/ProjectRow.dart';
import 'main.dart';






class Services extends StatefulWidget {
  const Services({super.key, required this.title});


  final String title;

  @override
  State<Services> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Services> {
  final List<Widget> _tabs = [
    MyHomePage(title: 'l',),
    Project(title: 'l',),
    Services(title:'l')
  ];

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: _tabs.length,
        child:
        Scaffold(
          backgroundColor: Colors.black54,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(48.0),
              child: AppBar(


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
                    Tab( text: 'SERVICES I OFFER'),



                  ],),
              )),
          body: Column(

              children:[
                Text(""),
                Center(child: Text("SERVICES I OFFER",style:TextStyle(fontWeight:FontWeight.bold,color: Colors.yellow,decoration: TextDecoration.underline),textAlign: TextAlign.start,textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)))),
                Center(child: Text("I will solve your computer based assignment including these requirements : Programming (C/C++/Java/Flutter/C#), Database (SQL/NOSQL), Data Structures & Algorithms, Object Oriented Programming , Design Patterns requirements, Logic building , Competitive Programming etc.",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),textAlign: TextAlign.start,textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)))),
                Divider(thickness: 3,),
                Text(""),
                Center(child:Text("I will teach / instruct you Core programming concepts , Networking , C++ , Java , Data Structures & Algorithms , Logic building , Competitive Programming , Database , Structured Query Language ",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),textAlign: TextAlign.start,textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)))),
                Divider(thickness: 3),
                Text(""),
                Center(child: Text("I will design and develop frontend for your Mobile device with full custom requirements (like you want it for Native or Cross Platform operating system , Responsive to different screen sizes , Compatibility with different OS Versions etc.)",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),textAlign: TextAlign.start,textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)))),
                Divider(thickness: 3),
                Center(child: Text("I will develop software / tech based solution to your problem with custom requirements",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),textAlign: TextAlign.start,textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context))))




              ]),
        ));





















    // This trailing comma makes auto-formatting nicer for build methods.

  }



}
