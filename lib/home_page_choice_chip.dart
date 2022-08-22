import 'package:flutter/material.dart';

class HomePageChoiseChip extends StatefulWidget {
  const HomePageChoiseChip({Key? key}) : super(key: key);

  @override
  State<HomePageChoiseChip> createState() => _HomePageChoiseChipState();
}

class _HomePageChoiseChipState extends State<HomePageChoiseChip> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChoiceChip'),
      ),
      body: Center(
        child: ChoiceChip(
          avatar: Image.network(
              'https://img.freepik.com/free-vector/beautiful-woman-have-vaccination-health-care-safety_40876-2482.jpg?w=1060&t=st=1661177618~exp=1661178218~hmac=ed680e18ab965addf99350a5a89052e6d49b21a7c87e393b25c01f9954184df9'),
          label: const Text('Choice Chip'),
          selected: _isSelected,
          onSelected: (newBoolValue) {
            setState(() {
              _isSelected = newBoolValue;
            });
          },
        ),
      ),
    );
  }
}
