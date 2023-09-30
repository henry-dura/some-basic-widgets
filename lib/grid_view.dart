import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  GridViewPage({Key? key}) : super(key: key);

  Map fruitsPerson = {
    'fruits': ['Mango', 'Orange', 'paw paw', 'Water melon', 'cucumber','Coconut','Banana','Groundnut'],
    'person': ['Mark', 'Paul', 'Ban', 'John', 'Ken', 'Ada'],
    'location': ['Nkwo', 'Abakpa', 'Nike', 'Orba', 'Ogige', 'Ada'],
    'colors': [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.purple,
      Colors.greenAccent,
      Colors.grey,
      Colors.deepOrangeAccent,
      Colors.blue,
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: GridView.builder(
          itemCount: fruitsPerson['fruits'].length,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15,childAspectRatio: 2/4),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: fruitsPerson['colors'][index],
              child: Center(child: Text(fruitsPerson['fruits'][index])),
            );
          }),
    );
  }
}
