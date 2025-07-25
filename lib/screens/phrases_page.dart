import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/Model.dart';
class PhrasesPage extends StatelessWidget {
   PhrasesPage({super.key});

  final List<Model> phrases = const [
    Model(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'Don\'t forget to subscribe',
    ),
    Model(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu daisukidesu',
      enName: 'I love programming',
    ),
    Model(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'Programming is easy',
    ),
    Model(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'Where are you going?',
    ),
    Model(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'What is your name?',
    ),
    Model(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
    ),
    Model(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'How are you feeling?',
    ),
    Model(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'Are you coming?',
    ),
    Model(
      sound: 'yes_im_coming.wav',
      jpName: 'Hai, ikimasu',
      enName: 'Yes, I’m coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return Item(
            model: phrases[index],
            color: Color(0xff50ADC7),
            ItemType: 'phrases',
          );
        },
      ),
    );
  }
}
