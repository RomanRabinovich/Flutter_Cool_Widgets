import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageSliverAppBar extends StatefulWidget {
  const HomePageSliverAppBar({Key? key}) : super(key: key);

  @override
  State<HomePageSliverAppBar> createState() => _HomePageSliverAppBarState();
}

class _HomePageSliverAppBarState extends State<HomePageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: false,
            floating: true,
            snap: true,
            title: Text('Flutter'),
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Mapp'),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Text(
                  "SLIVER",
                  style: TextStyle(fontSize: 600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
