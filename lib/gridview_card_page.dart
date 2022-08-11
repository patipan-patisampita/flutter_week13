import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          // children: List.generate(9, (index) => Card()),
          children: List.generate(6, (index) {
            return Card(
              color: Colors.orangeAccent,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                )
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person,size: 65,color: Colors.white),
                    Text("Menu-1",style: TextStyle(color: Colors.white))
                  ],
                ),
                onTap: () {},
              ),
            );
          })
        ),
      ),
    );
  }
}
