// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geniopay/empty_screen.dart';
import 'package:google_fonts/google_fonts.dart';


Color blue = Color.fromRGBO(0, 138, 167, 1);

Color lightBlue = Color.fromRGBO(224, 247, 254, 1);

Color white = Colors.white;

Color grey = Colors.grey.shade800;

Color black = Colors.black;




logo(double radius, double image){
  return CircleAvatar(
    backgroundColor: blue,
    radius: radius,
    child: SvgPicture.asset("icons/logo.svg", height: image,)
  );
}

homeLogo(double radius, double image){
  return CircleAvatar(
    backgroundColor: blue,
    radius: radius,
    child: SvgPicture.asset("icons/logo.svg", )
  );
}



spacer(double height){
  return SizedBox(
    height: height,
  );
}

hspacer(double width){
  return SizedBox(
    width: width,
  );
}


appBar(String text, String leading, double width, context, color){
  return AppBar(
    leading: InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: SvgPicture.asset("icons/$leading.svg",),
      )),
    
    leadingWidth: width + 20.0,
    iconTheme: IconThemeData(color: Colors.black),
    centerTitle: true,
    elevation: 0,
    backgroundColor: color,
    title: Text(text, style: GoogleFonts.ibmPlexSans(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700)),
    actions: [
       IconButton(icon: SvgPicture.asset("icons/help.svg",), onPressed: (){
          customNavigation(context, EmptyScreen(text: "Support",));
       },)
    ],
  );
}

//general textstyle
TextStyle tstyle(double size, color, fontWeight) => GoogleFonts.ibmPlexSans(fontSize: size, color: color, fontWeight: fontWeight);



customNavigation(context, screen){
 return Navigator.push(context, 
    MaterialPageRoute(builder: (context) => screen));
}


bottomLine(double bottom){
  return Padding(
    padding: EdgeInsets.only(bottom: bottom),
    child: Container(
        height: 5, 
        width: 134,
        decoration: BoxDecoration(
          color: black,
          borderRadius: BorderRadius.circular(100)),
      ),
  );
}