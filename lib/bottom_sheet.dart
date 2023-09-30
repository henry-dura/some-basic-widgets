import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('show bottom sheet'),
          onPressed: () {
            showModalBottomSheet(
                isDismissible: false,
                backgroundColor: Colors.white70,
                enableDrag: true,
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text('Mango'),
                        trailing: Text('Peter'),
                      ),
                      const ListTile(
                        title: Text('Paw Paw'),
                        trailing: Text('Mark'),
                      ),
                      const ListTile(
                        title: Text('Cucumber'),
                        trailing: Text('Paul'),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('close'))
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
