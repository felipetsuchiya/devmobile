import 'package:flutter/material.dart';

class Series extends StatefulWidget {
  const Series({super.key, required this.title});

  final String title;

  @override
  State<Series> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<Series> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Parse Todo List"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Container(
          child: const Text('Text'),
        )
    );
  }
}