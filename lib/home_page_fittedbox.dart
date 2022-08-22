import 'package:flutter/material.dart';

class HomePageFittedBox extends StatefulWidget {
  const HomePageFittedBox({Key? key}) : super(key: key);

  @override
  State<HomePageFittedBox> createState() => _HomePageFittedBoxState();
}

class _HomePageFittedBoxState extends State<HomePageFittedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitted Box Widget'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 50,
          color: Colors.red,
          padding: const EdgeInsets.all(10),
          child: const FittedBox(
            child: Text(
              'Container',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
