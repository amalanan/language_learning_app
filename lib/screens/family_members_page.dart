import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import 'package:language_learning_app/models/Model.dart';


class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});

  final List<Model> FamilyMembers = const [
    Model(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'father',
      sound: 'father.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'mother',
      sound: 'mother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojisan',
      enName: 'grand father',
      sound: 'grand father.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'grand mother',
      sound: 'grand mother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nīsan',
      enName: 'older brother',
      sound: 'older bother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'older sister',
      sound: 'older sister.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'daughter',
      sound: 'daughter.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'son',
      sound: 'son.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'younger brother',
      sound: 'younger brother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'younger sister',
      sound: 'younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: FamilyMembers.length,
        itemBuilder: (context, index) {
          return Item(
            model: FamilyMembers[index],
            color: Color(0xff558837),
            ItemType: 'family_members',
          );
        },
      ),
    );
  }
}
