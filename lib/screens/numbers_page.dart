import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/Model.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  final List<Model> numbers = const [
    Model(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'number_one_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'two',
      sound: 'number_two_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'three',
      sound: 'number_three_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'four',
      sound: 'number_four_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'five',
      sound: 'number_five_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'six',
      sound: 'number_six_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'seven',
      sound: 'number_seven_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
      sound: 'number_eight_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyu',
      enName: 'nine',
      sound: 'number_nine_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Ju',
      enName: 'ten',
      sound: 'number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            model: numbers[index],
            color: Color(0xffEF9235),
            ItemType: 'numbers',
          );
        },
      ),
    );
  }
}

/*  List<Item> getList(List<Number> numbers) {
    List<Item> itemsList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(Item(number: numbers[i]));
    }
    return itemsList;
  }*/
