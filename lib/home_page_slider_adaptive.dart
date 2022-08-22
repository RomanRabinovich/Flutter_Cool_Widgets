import 'package:flutter/material.dart';

class HomePageSlederAdaptive extends StatefulWidget {
  const HomePageSlederAdaptive({Key? key}) : super(key: key);

  @override
  State<HomePageSlederAdaptive> createState() => _HomePageSlederAdaptiveState();
}

class _HomePageSlederAdaptiveState extends State<HomePageSlederAdaptive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Adaptive'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Slider.adaptive(
              value: 1,
              onChanged: (double newValue) {},
            ),
            SwitchListTile.adaptive(
              title: const Text('Switch list title'),
              value: true,
              onChanged: (bool newValue) {},
            ),
            Switch.adaptive(
              value: true,
              onChanged: (bool newValue) {},
            ),
            Icon(
              Icons.adaptive.share,
            ),
            const CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
