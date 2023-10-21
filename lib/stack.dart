import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBAr Widget'),
      ),
      body: Center(
        child: Container(
          // color: Colors.pinkAccent,
          height: 400,
          width: MediaQuery.of(context).size.width - 15,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft:Radius.circular(80)),
            color: Colors.red,
            image: DecorationImage(image: AssetImage('images/Conference.jpg'),fit: BoxFit.cover)
          ),
          child: const Stack(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/Amanda.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
