import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seviyor Sevmiyor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple, // Tema rengini ayarla
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Seviyor Sevmiyor Uygulaması'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int aktifButon = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: aktifButon == 0
                  ? () {
                print("Seviyor");
                setState(() {
                  aktifButon = (aktifButon + 1) % 2;
                });
              }
                  : null,
              style: ElevatedButton.styleFrom(
                primary: aktifButon == 0 ? Colors.green : Colors.grey, // Buton rengini ayarla
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Buton boyutunu ayarla
              ),
              child: Text(
                "Seviyor",
                style: TextStyle(
                  color: Colors.white, // Buton metin rengini ayarla
                  fontSize: 20, // Buton metin boyutunu ayarla
                ),
              ),
            ),
            SizedBox(height: 20), // Butonlar arasında boşluk ekleyelim
            ElevatedButton(
              onPressed: aktifButon == 1
                  ? () {
                print("Sevmiyor");
                setState(() {
                  aktifButon = (aktifButon + 1) % 2;
                });
              }
                  : null,
              style: ElevatedButton.styleFrom(
                primary: aktifButon == 1 ? Colors.red : Colors.grey, // Buton rengini ayarla
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Buton boyutunu ayarla
              ),
              child: Text(
                "Sevmiyor",
                style: TextStyle(
                  color: Colors.white, // Buton metin rengini ayarla
                  fontSize: 20, // Buton metin boyutunu ayarla
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
