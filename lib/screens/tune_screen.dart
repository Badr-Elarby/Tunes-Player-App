import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';
import 'package:tunes_player_app/widgets/tune_item.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.green, sound: 'note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'note3.wav'),
    TuneModel(color: Colors.purple, sound: 'note4.wav'),
    TuneModel(color: Colors.orange, sound: 'note5.wav'),
    TuneModel(color: Colors.blue, sound: 'note6.wav'),
    TuneModel(color: Colors.pink, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff253238),
        title: const Text(
          'flutter_tunes',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
      ),
    );
  }
}
