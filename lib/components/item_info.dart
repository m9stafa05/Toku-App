import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    item.jpName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item.enName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.all(20),
          child: IconButton(
            splashColor: Color(0xff49332a),
            onPressed: () async {
              item.playSound();
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
      ],
    );
  }
}
