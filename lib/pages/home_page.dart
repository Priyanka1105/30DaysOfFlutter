import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Priyanka";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('PageBody $days name is $name'),
      ),
      drawer: MyDrawer(),
    );
  }
}

bringVeg({required bool t, int r = 100}) {
  print('t is $t and r is $r');
}
