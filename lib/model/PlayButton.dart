import 'package:flutter/material.dart';

class PlayButton extends StatefulWidget {
  @override
  _PlayButtonState createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool isPlay = true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.white12
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
              isPlay ? 'Play' : 'Pause'),
          SizedBox(width: 5,),
          Icon( // <-- Icon
            isPlay ? Icons.play_arrow : Icons.pause,
            size: 18.0,
          ),
        ],
      ),
      onPressed: () {
        setState(() {
          isPlay = !isPlay;
        });
      },
    );
  }
}
