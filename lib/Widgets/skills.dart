import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

Widget skills(BuildContext context,String image1,String image2,String image3,String skill,double imgHeight1,double imgWidth1,
    double imgHeight2,double imgWidth2,double imgHeight3,double imgWidth3)
{
  if(image2=="" && image3=="") {
     return  Row(
         //mainAxisAlignment: MainAxisAlignment.center,
            children:[
              // Container(child: Image.asset(image1,fit:BoxFit.contain)),
              Text(skill,style:TextStyle(color: Colors.black),textAlign: TextAlign.start,textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)))
            ]

     );
  } else if(image2!="" && image3!="")
     return  Row(
         //mainAxisAlignment: MainAxisAlignment.center,
            children:[
               // Container(child: Image.asset(image1,fit:BoxFit.contain)),
               // Image.asset(image2,fit:BoxFit.contain),
               // Image.asset(image3,fit:BoxFit.contain),
              Text(skill,style:TextStyle(color: Colors.black),textAlign: TextAlign.start,textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)))
            ]


     );

  else

    return Row(
     // mainAxisAlignment: MainAxisAlignment.center,
            children:[
             //   Image.asset(image1,fit:BoxFit.contain),
             // Image.asset(image2,fit:BoxFit.contain),
              Text(skill,style:TextStyle(color: Colors.black),textAlign: TextAlign.start,textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)))
            ]

       );
}