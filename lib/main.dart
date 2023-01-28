import 'package:flutter/material.dart';
import 'package:newsblogui/UI/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News UI',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}




// Positioned(
//   // groupvYu (1:53)
//   left:  0*fem,
//   top:  0*fem,
//   child:  
// Align(
//   child:  
// SizedBox(
//   width:  336*fem,
//   height:  294*fem,
//   child:  
// Opacity(
//   opacity:  0.15,
//   child:  
// Image.network(
//   [Image url]
//   width:  336*fem,
//   height:  294*fem,
// ),
// ),
// ),
// ),
// ),