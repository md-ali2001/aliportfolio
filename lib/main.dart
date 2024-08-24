import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body:Row
          (
            children:
            [
              Flexible(
                fit: FlexFit.loose,

                child: Container(
                    color:Colors.black12,
                    child:Column(

                      children:
                      [
                        Text(""),
                        Image.asset('images/profile.jpg',height:200,width:200),
                        Text(""),
                        Text("Muhammad Ali Masood",style:TextStyle(fontSize: 20)),
                        Text("  SOFTWARE ENGINEER ",style:TextStyle(fontSize: 27,color: Colors.indigoAccent))
                      ],
                    )

                ),
              ),




              Flexible(
                //fit:FlexFit.tight,
                child: Padding(
                    padding: const EdgeInsets.only(left:30),


                    child:Column(
                      mainAxisSize: MainAxisSize.max,

                      children:
                      [
                        Text(""),
                        Text("ppppplklk",style:TextStyle(fontSize: 30,color:Colors.black,fontWeight: FontWeight.bold),),

                        Row(
                            children:[ Image.asset('images/flutter.png',height:100,width:100),
                              Text(" Flutter App Development (Android/Web platform)",style:TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.start,)
                            ]
                        ),
                        Row(
                            children:[ Image.asset('images/springboot.png',height:50,width:100),
                              Text("Springboot Java backend",style:TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.start),
                            ]
                        ),
                        Row(
                            children:[ Image.asset('images/c++.png',height:60,width:100),
                              Image.asset('images/java.png',height:50,width:100),
                              Text(" Core Java/C/C++ Programming",style:TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.start),
                            ]
                        ),
                        Row(
                            children:[
                              Image.asset('images/firebase.png',height:50,width:100),
                              Image.asset('images/cloud.png',height:50,width:60),
                              Image.asset('images/aws.png',height:70,width:100),
                              Text("Firebase/AWS/Google Cloud Services",style:TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.start),
                            ]
                        ),
                        Row(
                            children:[
                              Image.asset('images/oop.png',height:50,width:100),
                              Text("Advanced Object Oriented Programming",style:TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.start),
                            ]
                        ),
                        Text(""),
                        Row(
                            children:[
                              Image.asset('images/nosql.png',height:50,width:70),
                              Image.asset('images/sql.png',height:50,width:100),
                              Text("SQL/NOSQL Databases",style:TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.start),

                            ]
                        )







                      ],
                    )

                ),
              ),

            ]







        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
