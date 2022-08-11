import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card page"),
      ),
      body: Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha((30)),
            onTap: () {},
            child: SizedBox(
              width: 300,
              height: 100,
              child: Column(
                children: [Icon(Icons.home), Text('MyHome')],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
