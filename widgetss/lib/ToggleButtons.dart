import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  var ToggleDurumlar=[false,true,false];
  var secilen_indeks;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ToggleButtons(
                children:[
                  Icon(Icons.looks_one),
                  Icon(Icons.looks_two),
                  Icon(Icons.looks_3),



                ] ,
                isSelected:ToggleDurumlar,
               color: Colors.pink,
               selectedColor: Colors.blue,
               fillColor: Colors.lightGreenAccent,



               onPressed: (int secilenindex){
                   secilen_indeks=secilenindex;
                   print("${secilen_indeks+1}. toggle secildi");

                   setState(() {
                      ToggleDurumlar[secilenindex]=!ToggleDurumlar[secilenindex];
                   });
               },

            ),
            ElevatedButton(
                onPressed: (){
                  print("en son secilen toggle ${secilen_indeks+1}");
                },
                child:Text("Tıkla"), ),
          ],
        ),
      ),

    );
  }
}
