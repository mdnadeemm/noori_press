import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noori_press/util/colors.dart';



final TextStyle kTitleStyle = GoogleFonts.ubuntu(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
  color: Colors.white,
);

final TextStyle kNormalStyle = GoogleFonts.ubuntu(
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

// building indicator

List<Widget> buildIndicator(){
  List<Widget> list = [];

  for(var i = 0; i < 4 ; i++){
    list.add(
      i== 1 ? indicator(true) : indicator(false),
    );
  }
  return list;
}


Widget indicator(bool isActive){
  return AnimatedContainer(
    margin: const EdgeInsets.symmetric(horizontal: 6.0),
    duration:  const Duration(milliseconds: 150),
    height: 10.0,
    width: isActive ? 30.0 : 10.0,
    decoration: BoxDecoration(
      color: isActive ? kOrangeColor : Colors.grey,
      shape:  !isActive ? BoxShape.circle : BoxShape.rectangle,
      borderRadius: isActive ? BorderRadius.circular(20) : null,
    ),
  );
}