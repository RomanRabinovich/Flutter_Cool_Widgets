import 'package:flutter/material.dart';

class HomePageStreamBuilder extends StatefulWidget {
  const HomePageStreamBuilder({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  State<HomePageStreamBuilder> createState() => _HomePageStreamBuilderState();
}

// Fake firebase stream
Stream<int> generateStream = (() async* {
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 1;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 2;
  throw 'An error occured';
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 3;
})();

class _HomePageStreamBuilderState extends State<HomePageStreamBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamBuilder'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: generateStream,
          initialData: 0,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            }
            if (snapshot.hasError) {
              return const Text('Error');
            } else {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 40),
              );
            }
          },
        ),
      ),
    );
  }
}
