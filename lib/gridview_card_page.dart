import 'package:flutter/material.dart';

class Menu{
  final String? title;
  final IconData? icon;
  final Color? bkColor;

  Menu({this.title,this.icon,this.bkColor});
}

List<Menu> menus = [
  Menu(title: "MENU-1",icon:Icons.person, bkColor: Colors.orangeAccent),
  Menu(title: "MENU-2",icon:Icons.person_add, bkColor: Colors.blue),
  Menu(title: "MENU-3",icon:Icons.person_off, bkColor: Colors.red),
];

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: menus.length,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          // children: List.generate(9, (index) => Card()),
          children: List.generate(menus.length, (index) {
            return Card(
              color: menus[index].bkColor,
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
                    Icon(menus[index].icon,size: 65,color: Colors.white),
                    Text(menus[index].title!,style: TextStyle(color: Colors.white))
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
