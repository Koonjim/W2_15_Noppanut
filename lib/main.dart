import 'package:flutter/material.dart';
import 'rectangle.dart';
import 'trapezoid.dart';

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
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/rectangle': (context) => Rectangle(),
        '/trapezoid': (context) => Trapezoid(),
      },
      initialRoute: '/',
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 250),
            Image.network("https://cdn-icons-png.freepik.com/512/3396/3396202.png",width: 200,height: 200,),
            SizedBox(height: 30,),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/rectangle'),
                child: Text('ไปที่หน้าคำนวณพื้นที่สี่เหลี่ยม',style: TextStyle(fontSize: 16),),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue[200],
                  foregroundColor: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/trapezoid'),
                child: Text('พื้นที่สี่เหลี่ยมคางหมู',style: TextStyle(fontSize: 16),),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue[200],
                  foregroundColor: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
