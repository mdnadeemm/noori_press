import 'package:flutter/material.dart';
import 'package:noori_press/screen/intro_screen.dart';



void main(){
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Noori Press',
      theme: ThemeData(
        useMaterial3: true,

      ),
      home:  const IntroScreen(),
    );
  }
}