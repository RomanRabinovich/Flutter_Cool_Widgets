import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageExpansionTile extends StatefulWidget {
  const HomePageExpansionTile({Key? key}) : super(key: key);

  @override
  State<HomePageExpansionTile> createState() => _HomePageExpansionTileState();
}

class _HomePageExpansionTileState extends State<HomePageExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expension Tile'),
      ),
      body: const ExpansionTile(
        title: Text('See more'),
        leading: Icon(Icons.info),
        backgroundColor: Colors.black12,
        children: [
          ListTile(title: Text('First')),
          ListTile(title: Text('Second')),
          ListTile(title: Text('Third')),
        ],
      ),
    );
  }
}
