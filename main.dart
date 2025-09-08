import 'package:flutter/material.dart';

/*
The purpose of this syntax is to import the flutter material design library widgets, tools for building a material design Ui
google design system

import - dart keyword to include external libraries

package: flutter - refers to the material design packages

this is essential for building flutter apps w/ a standard UI
* */

void main () {
  runApp(const MyApp()); // flutter functiom that initialize the app and attaches root widget (My App()) to the screen

}

class MyApp extends StatelessWidget { // MyApp Extends custom class
  // stateless widgets - base class for widgets that do not hold mutable

  const MyApp({super.key});

  @override //indicates the method oveerides the statelessWidget
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,

      ),
      home: const MyHomePage(),
    ); //MaterialApp
  }

}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Act#1'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/terrifier.jpg',
                width: 300,
                height: 300,
              ),
              const Text(
                'TERIFFIER',
                style: TextStyle(fontSize: 50),
              ),
              const Text(
                'Named one of the scariest clowns on screen by BloodyDisgusting.com, Art The Clown returns and sets his sights on three young women, along with anyone else that gets in his way. ',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        )
    );

  }
}
