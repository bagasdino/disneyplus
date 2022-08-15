import 'package:flutter/material.dart';

class DownloadButton extends StatefulWidget {
  @override
  _DownloadButtonState createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  bool isDownload= true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.white12
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Download'),
          SizedBox(width: 5,),
          Icon( // <-- Icon
            isDownload ? Icons.download : Icons.download_done,
            color: isDownload ? Colors.white70 :  Colors.green ,
            size: 18.0,
          ),
        ],
      ),
      onPressed: () {
        setState(() {
          isDownload = !isDownload;
        });
      },
    );
  }
}