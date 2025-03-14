// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/item_model.dart';

class Item extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Item({
    super.key,
    required this.item,
    required this.color,
  });
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color(0xfffff4d9),
            child: Image.asset(item.image!),
          ),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}


