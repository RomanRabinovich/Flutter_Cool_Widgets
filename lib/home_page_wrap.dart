import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageWrap extends StatefulWidget {
  const HomePageWrap({Key? key}) : super(key: key);

  @override
  State<HomePageWrap> createState() => _HomePageWrapState();
}

class _HomePageWrapState extends State<HomePageWrap> {
  @override
  Widget build(BuildContext context) {
    Widget _image = Padding(
      padding: EdgeInsets.all(8.0),
      child: Image.network(
        'https://images.unsplash.com/photo-1603835534399-d894bfbcc31f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnVja3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
    );

    List<Widget> _list = [
      _image,
      _image,
      _image,
      _image,
      _image,
      _image,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
      ),
      body: Center(
        child: Wrap(
          children: _list,
        ),
      ),
    );
  }
}
