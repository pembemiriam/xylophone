import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();

  void _open(int assetIndex) {
    _assetsAudioPlayer.open(
      AssetsAudio(
        asset: "note$assetIndex.wav",
        folder: "assets/",
      ),
    );
  }

  Widget _buildKey({Color color, int assetIndex}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          _open(assetIndex);


        },
        child: null,),
    );
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildKey(color:Colors.red, assetIndex:1),
                _buildKey(color: Colors.orange,assetIndex: 2),
                _buildKey(color: Colors.yellow,assetIndex: 3),
                _buildKey(color: Colors.green,assetIndex: 4),
                _buildKey(color: Colors.green[700],assetIndex: 5),
                _buildKey(color: Colors.blue,assetIndex: 6),
                _buildKey(color: Colors.purple,assetIndex: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
