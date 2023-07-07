import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectindex = 0;
  ontap(index){
    setState((){
      selectindex = index;
    });
  }

  var widgetlist =[
    Home(),
    Center(child: Text('Second Page'),),
    Center(child: Text('Third Page'),),
    Center(child: Text('Fourth Page'),),
    Center(child: Text('Five Page'),)
  ];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: widgetlist[selectindex],
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
       selectedItemColor: Colors.black,
       onTap: ontap,
       currentIndex: selectindex,
       showUnselectedLabels: false,
       showSelectedLabels: true,
       items: const [
         BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home), label: 'Home',),
         BottomNavigationBarItem( icon: Icon(Icons.play_circle_outline), activeIcon: Icon(Icons.play_circle), label: 'Shorts',),
         BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), activeIcon: Icon(Icons.add_circle), label: 'Add',),
         BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined), activeIcon: Icon(Icons.subscriptions), label: 'Subcriptions',),
         BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined), activeIcon: Icon(Icons.video_library), label: 'Library',),
       ],
     ),

   );
  }
}
