import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/item_model.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});
  final List<ItemModel> members = const [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      image:
          'assets/images/family_members/family_father.png',
      jpName: 'Chichi',
      enName: 'Father',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      image:
          'assets/images/family_members/family_mother.png',
      jpName: 'Haha',
      enName: 'Mother',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      image:
          'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      image:
          'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojīsan',
      enName: 'Grandfather',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      image:
          'assets/images/family_members/family_grandmother.png',
      jpName: 'Obāsan',
      enName: 'Grandmother',
    ),
    ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      image:
          'assets/images/family_members/family_older_brother.png',
      jpName: 'Ani',
      enName: 'Older Brother',
    ),
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      image:
          'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brohter.wav',
      image:
          'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger Brother',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister  .wav',
      image:
          'assets/images/family_members/family_younger_sister.png',
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
          "Family Members",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return Item(
            color: Color(0xff528032),
            item: members[index],
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
