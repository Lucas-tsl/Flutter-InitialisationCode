// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
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
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 122, 86, 183)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Découverte de Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int currentPageIndex = 0;
  int _randomNumber = 0;
  

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      
      _counter--;
    });
  }

  void _ResetCounter(){
  setState(() {
    
    _counter =0; 
  });

  
  }

  void GenerateAle(){
  setState(() {
    _randomNumber = Random().nextInt(1000);
  });

  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
         
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
        
      ),
      body: <Widget>[
        Container(   
        child: ListView (//Column à été remplacé par listview
          children: <Widget>[

            //images
            Image.network('https://upload.wikimedia.org/wikipedia/fr/1/1a/Bob_l%27%C3%A9ponge_logo_S09.png',width: 320.0),
            Image.asset('images/bob.png', width: 400,),

            Align(
              alignment: Alignment.center,
              child: Text(
                'Nombre : ',
                style: TextStyle(
                  fontSize:50.0, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),

          ],
        ),
        
      ),
      Container(
        
        color: Colors.green,
        alignment: Alignment.center,
        child: const Text('générer un nombre aléatoire'),
        
      ),
   

      Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: const Text('paramètre'),
      ),
      ][currentPageIndex],

      floatingActionButton: Stack(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left:31),

        child: Align(
          alignment: Alignment.bottomLeft,
          child: FloatingActionButton(
            onPressed: _decrementCounter,
            child: Icon(Icons.remove),),
        ),),

        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: _incrementCounter,
          child: Icon(Icons.add),),
        ),

        // Remise à Zéro
        Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            onPressed: _ResetCounter,
            
          child: Icon(Icons.restore),),
        ),
      ],      
    ),
      bottomNavigationBar: BottomNavigationBar(
    currentIndex: currentPageIndex,
    onTap: (int index) {
      setState(() {
        currentPageIndex = index;
      });
    },
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Accueil',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.play_arrow_outlined),
        label: 'suivante',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Paramètre',
      ),
    ],
  ),
    );
  }
}
