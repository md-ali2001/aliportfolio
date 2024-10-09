import 'package:ali_portfolio/Widgets/singleProject.dart';
import 'package:flutter/cupertino.dart';

  ProjectRow(String project1Image,String project2Image,
      String project1Name,String project2Name,
      String project1Description,String project2Description)
{
  return SizedBox(
    height:180,
    child: Row(
    children: [
    Image.asset('images/Divider.PNG',fit:BoxFit.contain),
    Image.asset(project1Image,height:150,width:150,fit:BoxFit.contain),
    Projects(project1Name,project1Description) ,
    Image.asset('images/Divider.PNG',fit:BoxFit.contain),
    Image.asset(project2Image,height:150,width:150,fit:BoxFit.contain),
    Projects(project2Name,project2Description)
    ]
    ),
  );

}