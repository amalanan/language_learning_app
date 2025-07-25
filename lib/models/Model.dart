import 'package:flutter/material.dart';

class Model {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  const Model({
    @required this.image,
    required this.jpName,
    required this.enName,
    required this.sound,
  });
}
