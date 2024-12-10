import 'package:flutter/cupertino.dart';
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
            Image.asset(),
            //yerel resimleri
            //internet üzerinden resim alma
            Image.network("https://th.bing.com/th/id/R.1a23dc6e36b48e54132d1fa73270d57c?rik=Iic8iFHgksB2Jw&riu=http%3a%2f%2f1.bp.blogspot.com%2f-Tv4JT1DSxP0%2fUXQo33FehVI%2fAAAAAAAADLM%2fNgqFTdBjpnY%2fs1600%2fmanzara_resimleri_rer1.jpg&ehk=lkoP314KouI5orB9Jtv3g9H32UWh3DXJTYBwbkNd%2f3M%3d&risl=&pid=ImgRaw&r=0"),
            FadeInImage(placeholder: placeholder, image: image),//resim gelene kadar ekrana placeholder gösterme

          ],
        ),
      ),

    );
  }
}
