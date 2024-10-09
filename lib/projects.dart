import 'package:flutter/material.dart';
import 'Services.dart';
import 'Widgets/ProjectRow.dart';
import 'main.dart';






class Project extends StatefulWidget {
  const Project({super.key, required this.title});


  final String title;

  @override
  State<Project> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Project> {
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
backgroundColor: Colors.grey[50],
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
              ProjectRow('images/CliCricket.png','images/RevivePK.png',
                  'CliCricket','RevivePK','\nAvailable on Google Playstore - '
                      'Contain ads\nNative Android app Compatible with '
                      '(version:7 to 14)\nFull responsive on all screen '
                      'sizes\nLatest version : 4th release was published in '
                      'AUG-2024\nReal time scorecard with overall career stats',
                  '\nTransforming transportation, healthcare & financial '
                      'wellbeing\nCompatible with Android, ios, web, '
                      'windows\nGoogle maps & places, Payment gateways, '
                      'APIs are integrated \nApplication has server&Database '
                      '(secure, optimized)\nComponents: Public&Private Routes,'
                      ' Emergency, Blood Donation'
              ),
              ProjectRow('images/uniSystem.png','images/votingSystem.png',
              'University Management','Voting System',"\nWindows Application - Responsive - "
                      "Has Database\nMajor Components : Student-Faculty Registration,"
                      "\nFee Management, Admin Panel, Students Portal Login ,\nLibrary Portal, "
                      "University Notice Board\nSystem Password protection - Interactive UI","\nNative Android Application - Voter can register 1 account with\ntheir CNIC - CNIC must exist in Database\nVoting"
                      " questions & options are dynamic\nUser can vote for only 1 option\nResults are displayed when time ends"
                      ),



              ProjectRow('images/facebook.png','images/android_storage.png',"Facebook UI Clone","Android Storage I/O","\nCross Platform Application - Facebook Home tab Page\nFriends' Stories with their profile photo\nFriends' posts - Share your own post\n\n","\nNative Android app - Access to Android storage\n"
                  "Create new text file and save content\nEdit existing file on SD Card/Internal storage\n\n")


          ]),
        ));







            













      // This trailing comma makes auto-formatting nicer for build methods.

  }



}
