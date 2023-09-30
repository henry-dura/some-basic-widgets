import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({Key? key}) : super(key: key);


  Map fruitsPerson = {
    'fruits': ['Mango', 'Orange', 'paw paw', 'Water melon', 'cucumber'],
    'person': ['Mark', 'Paul', 'Ban', 'John', 'Ken', 'Ada'],
    'location': ['Nkwo', 'Abakpa', 'Nike', 'Orba', 'Ogige', 'Ada'],
    'colors': [Colors.red,Colors.green,Colors.blue,Colors.purple,Colors.greenAccent]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
          itemCount: fruitsPerson['fruits'].length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: fruitsPerson['colors'][index],
              child: ListTile(
                title: Text(fruitsPerson['fruits'][index]),
                subtitle: Text(fruitsPerson['person'][index]),
                trailing: Text(fruitsPerson['location'][index]),
              ),
            );
          }),
    );
  }
}
