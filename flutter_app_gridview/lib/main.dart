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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Gridview"),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20.0),
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          children: List<Widget>.generate(26, (index) {
            return GridTile(
                child: Card(
              color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                  .withOpacity(1.0),
              child: Text(
                '$index'.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 40.0),
              ),
            ));
          }),
        ));
  }
}
