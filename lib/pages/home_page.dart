import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Priyanka";

//Day 11 , we learnet about context
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: CatalogModel.items[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}

bringVeg({required bool t, int r = 100}) {
  print('t is $t and r is $r');
}
