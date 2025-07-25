import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import 'package:language_learning_app/models/Model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Model> ColorsList = const [
    Model(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Kuro',
      enName: 'black',
      sound: 'black.wav',
    ),
    Model(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'brown',
      sound: 'brown.wav',
    ),
    Model(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Kasareru kiiro',
      enName: 'dusty yellow',
      sound: 'dusty_yellow.wav',
    ),
    Model(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Haiiro',
      enName: 'gray',
      sound: 'gray.wav',
    ),
    Model(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'green',
      sound: 'green.wav',
    ),
    Model(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'red',
      sound: 'red.wav',
    ),
    Model(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'white',
      sound: 'white.wav',
    ),
    Model(
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'yellow',
      sound: 'yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: ColorsList.length,
        itemBuilder: (context, index) {
          return Item(
            model: ColorsList[index],
            color: Color(0xff79359F),
            ItemType: 'colors',
          );
        },
      ),
    );
  }
}
