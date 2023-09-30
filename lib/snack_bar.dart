import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: const Text('You are deleting this item',style: TextStyle(fontSize: 16),),
              action: SnackBarAction(label: 'Undo',onPressed: (){},),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              behavior: SnackBarBehavior.floating,
              duration: const Duration(milliseconds: 3000),

            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Show button'),
        ),
      ),
    );
  }
}
