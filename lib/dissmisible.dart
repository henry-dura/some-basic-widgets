import 'package:flutter/material.dart';

Map fruitsPerson = {
  'fruits': ['Mango', 'Orange', 'paw paw', 'Water melon', 'Orange'],
  'person': ['Mark', 'Paul', 'Ban', 'John', 'Ken', 'Ada'],
  'location': ['Nkwo', 'Abakpa', 'Nike', 'Orba', 'Ogige', 'Ada'],
  'colors': [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.greenAccent
  ]
};

class DissmissibleWidget extends StatelessWidget {
  const DissmissibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dissimisible Widget'),
      ),
      body: ListView.builder(
          itemCount: fruitsPerson['fruits'].length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: ValueKey<String>(fruitsPerson['fruits'][index]),
                background: Container(
                  color: Colors.red,
                ),
                secondaryBackground: Container(
                  color: Colors.green,
                ),
                onDismissed: (DismissDirection direction) {
                  if (direction == DismissDirection.startToEnd) {
                    final snackBar = SnackBar(
                        content: Text(
                            'Fruit: ${fruitsPerson['fruits'][index]} is deleted'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                  else{
                    final snackBar = SnackBar(
                      behavior: SnackBarBehavior.floating,
                        content: Text(
                            'Fruit: ${fruitsPerson['fruits'][index]} is saved'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: Card(
                  color: Colors.grey,
                  child: ListTile(
                    title: Text(fruitsPerson['fruits'][index]),
                    subtitle: Text(fruitsPerson['person'][index]),
                  ),
                ));
          }),
    );
  }
}
