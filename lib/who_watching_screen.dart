import 'package:disneyplus/model/who_watch.dart';
import 'package:flutter/material.dart';
import 'package:disneyplus/menu_screen.dart';

class WhoWatching extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.only(top: 40),
       child: Stack(
         children: <Widget>[
           Align(
             alignment: Alignment.topCenter,
             child: Padding(
               padding: const EdgeInsets.all(5),
               child: Text('Who'+"'"+'s watching?',
                 style: TextStyle(
                     fontSize: 40,
                     fontFamily: 'SFProDisplay',
                     color: Colors.white,
                     fontWeight: FontWeight.bold),
               ),
             ),
           ),
           Align(
             alignment: Alignment.center,
             child: Padding(
               padding: const EdgeInsets.all(5),
               child: ListView.builder(
                scrollDirection: orientation == Orientation.portrait ? Axis.vertical : Axis.horizontal,
                 padding: orientation == Orientation.portrait ? EdgeInsets.only(top: 100) : EdgeInsets.only(top: 20),
                  itemBuilder: (context, index) {
                  final WhoWatch who = whoWatchList[index];
                    return InkWell(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return MenuScreen(who: who);
                      }));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                            backgroundImage:
                            NetworkImage(who.photo),
                            radius: 40,
                            ),
                          SizedBox(height: 5),
                        Text(
                              who.name,
                              style: TextStyle(fontSize: 16.0, color: Colors.white70, fontFamily: 'SFProDisplayMedium'),
                              ), SizedBox(height: 15),
                        ],
                      ),
                    );
                    },
                itemCount: whoWatchList.length,
              ),
            ),
           ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(5),
          child:    Image.asset('images/disneyhitam.png',
            width: 120),
          ),
        ),
      ]
    ),
    ),
    );
  }
}