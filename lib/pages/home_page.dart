import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Priyanka";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog1'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('PageBody $days name is $name'),
      ),
      drawer: Drawer(),
    );
  }
}

bringVeg({required bool t, int r = 100}) {
  print('t is $t and r is $r');
}
