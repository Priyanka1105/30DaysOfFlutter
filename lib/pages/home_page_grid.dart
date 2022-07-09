import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'package:flutter_catalog/widgets/item_widget_grid.dart';

class HomePageGrid extends StatefulWidget {
  @override
  State<HomePageGrid> createState() => _HomePageGridState();
}

class _HomePageGridState extends State<HomePageGrid> {
  int days = 30;

  String name = "Priyanka";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    //await Future.delayed(Duration(seconds: 4));
    var catalogJson = await rootBundle.loadString('files/catalog.json');
    //print(catalogJson); //type is string

    var decodeData = jsonDecode(catalogJson);
    //print(decodeData); //_JsonMap {products:[{},{},{}]}

    var productData = decodeData["products"]; //fetching prodcuts property
    //print(productData); // give you List [{},{},{}]

    //Now we need to convert above list to list of Items
    //we have already defined a method fromMap in our Item class
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

//Day 11 , we learnet about context
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CatalogGrid'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidgetGrid(item: CatalogModel.items[index]);
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
