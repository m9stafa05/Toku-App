import 'package:flutter/material.dart';
import 'package:toku_app/components/phrases_item.dart';
import 'package:toku_app/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrases = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka?',
      enName: 'Are you coming?',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      jpName: 'Haha',
      enName: 'Mother',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      jpName: 'Musuko',
      enName: 'Son',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'Musume',
      enName: 'Daughter',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      jpName: 'Ojīsan',
      enName: 'Grandfather',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      jpName: 'Obāsan',
      enName: 'Grandmother',
    ),
    ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      jpName: 'Ani',
      enName: 'Older Brother',
    ),
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      jpName: 'Ane',
      enName: 'Older Sister',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brohter.wav',
      jpName: 'Otōto',
      enName: 'Younger Brother',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister  .wav',
      jpName: 'Imōto',
      enName: 'Younger Sister',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332a),
        title: Text(
          "Pharses",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: Color(0xff47a5cb),
            item: phrases[index],
          );
        },
      ),
    );
  }

  // A list view
  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemList.add(NumItem(number: numbers[i]));
  //   }
  //   return itemList;
  // }
}
