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
  var tfController=TextEditingController();
  var alinan_veri="";

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
            TextField(
              obscureText: true,//password için yazılan şifre ekranda * olarak güxkmesini sağlar
              keyboardType: TextInputType.datetime,//klavyeyi sadece sayılardan oluşmasını sağlar
              textAlign: TextAlign.center,//textfield üstündeki yazıyı hizalamaya yarar
              maxLength: 4,//uzunluğu sınırlar
              decoration: InputDecoration(//dekorsayon işleri bu fonk içinde yazılır
                hintText: "Yaxınız",//textfield içindeki yazı
                hintStyle: TextStyle(
                  color: Colors.limeAccent,
                  fontSize: 20,
                ),
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
                filled: true,//background renklendirmek için gerekli
                fillColor: Colors.teal,
                border: OutlineInputBorder(//çerçeve için gerekl, fonk
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),

              ),

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){//extended ekiyle birlikte butona yazı ekleyebilliriz diğer türlü olmadığı versiyonda ekleyemiyoruzf
        print("Fab1 tıklandı");
      }, label: Text("Fab1"),//butona yazı ekleyebilirsin
      icon: Icon(Icons.audiotrack),//icon ekleme
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,//yazı ve icon renklendirme
      ),

    );
  }
}
