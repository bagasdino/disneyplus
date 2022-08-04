
import 'package:disneyplus/model/actionfilm.dart';
import 'package:flutter/material.dart';

class DetailFilmAction extends StatelessWidget {

  final ActionFilm film;
  DetailFilmAction({required this.film});
  late String videoIds;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,

      body: SafeArea(
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(film.tumbnail),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  SafeArea(

                    child: Padding(

                      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 180),
                      child: Wrap(
                        spacing: 10,
                        children: [
                          PlayButton(),
                          DownloadButton(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Padding(padding: const EdgeInsets.only(left: 5, top: 15),
                      child: Text(film.year,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SFProDisplay',
                            color: Colors.white54,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 5, top: 15),
                      child: Text(" - ",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SFProDisplay',
                            color: Colors.white54,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 5, top: 15),
                      child: Text(film.duration,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SFProDisplay',
                            color: Colors.white54,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 5, top: 15),
                      child: Text(" - ",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SFProDisplay',
                            color: Colors.white54,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 5, top: 15),
                      child: Text(film.genre,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SFProDisplay',
                            color: Colors.white54,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child:  Card(
                  child: Column(
                    children: <Widget>[
                      Padding(padding: const EdgeInsets.only(left: 5, top: 20),
                        child: Text(film.title,
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'SFProDisplay',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      Padding(padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                        child: Text(film.description,
                          style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'SFProDisplay',
                              color: Colors.white70,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Padding(padding: const EdgeInsets.only(left: 5, top: 10),
                        child: Text("Trailer",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'SFProDisplay',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: film.imageTrailer.map((url){
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(url),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(left: 5, top: 10),
                        child: Text("More Like This",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'SFProDisplay',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        height: 160,
                        //color: Colors.orange,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final ActionFilm film = actionList[index];
                            return InkWell(
                              onTap: (){
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Text(recently.tumbnail),
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.network(film.tumbnail, height: 150,),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: actionList.length,
                        ),
                      ),
                    ],
                  ),
                  elevation: 8,
                  margin: EdgeInsets.only(top: 30),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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