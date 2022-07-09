import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidgetGrid extends StatelessWidget {
  final Item item;

  const ItemWidgetGrid({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: GridTile(
        child: Image.network(item.image),
        header: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
          child: Text(
            item.name,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        // subtitle: Text(item.desc),
        footer: Text(
          "\$${item.price}",
          textScaleFactor: 1.6,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),
        ),
      ),
    );
  }
}
