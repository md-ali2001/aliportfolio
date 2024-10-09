import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

Widget Projects(String projectName,String Details){
return Padding(
    padding: const EdgeInsets.only(left:8.0),
    child: RichText(
      //textAlign: TextAlign.start,//textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context),
        text: TextSpan(

          style: const TextStyle(

              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
          children: <TextSpan>[
            TextSpan(text: projectName,style: TextStyle(color: Colors.green,),),
            TextSpan(text: Details, style: const TextStyle( fontSize: 17,fontWeight: FontWeight.normal)),
          ],


        ))









) ;

}