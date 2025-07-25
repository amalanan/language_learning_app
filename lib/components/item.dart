import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/Model.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.model,
    required this.color,
    required this.ItemType,
  });

  final Model model;
  final Color color;
  final String ItemType;

  @override
  Widget build(BuildContext context) {
    return model.image == null
        ? Container(
          height: 100,
          color: color,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.jpName,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      model.enName,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: IconButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('assets/sounds/'));
                  },
                  icon: Icon(Icons.play_arrow, color: Colors.white),
                ),
              ),
            ],
          ),
        )
        : Container(
          height: 100,
          color: color,
          child: Row(
            children: [
              Container(
                color: Color(0xffFFF6DC),
                child: Image.asset(model.image!),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.jpName,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      model.enName,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: IconButton(
                  onPressed: () async {
                    try {
                      final player = AudioPlayer();
                      await player.play(
                        AssetSource('sounds/$ItemType/${model.sound}'),
                      );
                    } catch (ex) {
                      print('Audio error: $ex');
                    }
                  },
                  icon: Icon(Icons.play_arrow, color: Colors.white),
                ),
              ),
            ],
          ),
        );
  }
}
