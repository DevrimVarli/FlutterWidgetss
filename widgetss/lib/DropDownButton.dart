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
  var secilenUlke="Türkiye";
  var ulkeler_Liste=<String>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ulkeler_Liste.add("Türkiye");
    ulkeler_Liste.add("Almanya");
    ulkeler_Liste.add("İtalya");
    ulkeler_Liste.add("Brezilya");
    ulkeler_Liste.add("Çin");

  }

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
            DropdownButton<String>(
                value: secilenUlke,
                items: ulkeler_Liste.map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text("Ülke:$value",style: TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 30,
                    ),),
                  );
                }).toList(),
                onChanged: ( secilenVeri){
                  setState(() {
                    secilenUlke=secilenVeri!;
                  });
                },

            ),
          ],
        ),
      ),

    );
  }
}
