import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          // children: List.generate(9, (index) => Card()),
          children: List.generate(9, (index) {
            return Card(
              color: Colors.orangeAccent,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                )
              ),
            );
          })
        ),
      ),
    );
  }
}
