import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Widget"),
      ),
      body: SizedBox(
        height: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("R-1",style: TextStyle(fontSize: 25)),
            Text("R-2",style: TextStyle(fontSize: 25)),
            Text("R-3",style: TextStyle(fontSize: 25)),
            Text("R-4",style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
