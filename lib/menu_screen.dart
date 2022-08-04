import 'package:disneyplus/aboutdisney_screen.dart';
import 'package:disneyplus/detailfilm_screen.dart';
import 'package:disneyplus/detailfilmaction_screen.dart';
import 'package:disneyplus/detailfilmnew_screen.dart';
import 'package:disneyplus/detailfilmtrending_screen.dart';
import 'package:disneyplus/model/actionfilm.dart';
import 'package:disneyplus/model/kidsmovie.dart';
import 'package:disneyplus/model/newfilm.dart';
import 'package:disneyplus/model/recentlywatch.dart';
import 'package:disneyplus/model/trendingfilm.dart';
import 'package:flutter/material.dart';
import 'package:disneyplus/model/who_watch.dart';

import 'detailfilmkids_screen.dart';


class MenuScreen extends StatelessWidget {

  final WhoWatch who;
  MenuScreen({required this.who});

  @override
  Widget build(BuildContext mcontext) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 95),
                    height: 200,
                    child:ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final NewFilm imgs = newFilmList[index];
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return DetailFilmNew(film: imgs);
                            }));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Text(recently.tumbnail),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(imgs.tumbnail, width: 340,),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: whoWatchList.length,
                    ),
                  //Image.asset('images/disneylogo.png'),
                ),
                Padding(padding: const EdgeInsets.only(left: 5, top: 5),
                  child: Text('Recently Watch',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'SFProDisplay',
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: 125,
                  //color: Colors.orange,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final RecentlyWatch recently = recentlyWatchList[index];
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailFilm(film: recently);
                          }));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Text(recently.tumbnail),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(recently.tumbnail, width: 200,),
                                ),
                              ),
                            ],
                          ),
                        );
                    },
                    itemCount: whoWatchList.length,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 5, top: 5),
                  child: Text('Trending',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'SFProDisplay',
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: 160,
                  //color: Colors.orange,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final TrendingFilm trendingFilm  = trendingList[index];
                        return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                               return DetailFilmTrending(film: trendingFilm);
                              }));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(trendingFilm.tumbnail, height: 150,),
                                  ),
                                ),
                              ],
                            ),
                        );
                      },
                    itemCount: trendingList.length,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 5, top: 5),
                  child: Text('Action Film',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'SFProDisplay',
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final ActionFilm actionfilm = actionList[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return DetailFilmAction(film: actionfilm);
                            }));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Text(recently.tumbnail),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(
                                    actionfilm.tumbnail, height: 150,),
                                ),
                              ),
                            ],
                          ),
                        );
                    },
                    itemCount: recentlyWatchList.length,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 5, top: 5),
                  child: Text('Kids Movie',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'SFProDisplay',
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final KidsMovie kids = kidsList[index];
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailFilmKid(film: kids);
                          }));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(kids.tumbnail, height: 150,),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: recentlyWatchList.length,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(//gives empty space around the CircleAvatar
              padding: const EdgeInsets.only(top: 40, right: 10),
              child: InkWell(
                onTap: (){
                  showDialog(
                    context: mcontext,
                    builder: (context) => AlertDialog(
                      content: setupAlertDialoadProfile(who.name, who.photo, mcontext),
                      actions: [
                      ],
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundImage:
                  NetworkImage(who.photo),
                  radius: 20,
                ),
             )
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 10),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu, color: Colors.white,),
                      onPressed: () {
                        showDialog(
                          context: mcontext,
                          builder: (context) => AlertDialog(
                            content: setupAlertDialoadContainer(who.name, who.photo, mcontext),
                            actions: [
                            ],
                          ),
                        );
                      },
                    ),
                    Image.asset('images/disneyhitam.png',
                        height: 25),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
Widget setupAlertDialoadContainer(String name, String url, BuildContext context) {
  return Container(

    height: 150.0, // Change as per your requirement
    width: 300.0, // Change as per your requirement

    child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          Padding(padding: const EdgeInsets.only(left: 5, top: 5),
              child:
              CircleAvatar(
                backgroundImage:
                NetworkImage(url),
                radius: 20,
               ),
          ),
           Padding(padding: const EdgeInsets.only(left: 5, top: 5),
           child:
           Text(name,
            style: TextStyle(
            fontSize: 16,
            fontFamily: 'SFProDisplay',
            color: Colors.black,
           fontWeight: FontWeight.w400),
          textAlign: TextAlign.left,
         ),
       ),
        Padding(padding: const EdgeInsets.only(top: 5),
          child:
          Divider(color: Colors.black, ),
          ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AboutDisney();
            }));
              },
          child: SizedBox(

            child: Container(
                  color: Colors.black.withOpacity(0.01),
              child: Text(
                'About Disney+',
                textAlign: TextAlign.left,
            ),
          ),
        ),
        ),
        Padding(padding: const EdgeInsets.only(top: 5),
          child:
          Divider(color: Colors.black, ),
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(

            child: Container(
              color: Colors.black.withOpacity(0.01),
              child: Text(
                'Logout',
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
  ],
    ),
  );
}

Widget setupAlertDialoadProfile(String name, String url, BuildContext context) {
  return Container(

    height: 120.0, // Change as per your requirement
    width: 300.0, // Change as per your requirement

    child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(padding: const EdgeInsets.only(left: 5, top: 5),
          child:
          CircleAvatar(
            backgroundImage:
            NetworkImage(url),
            radius: 20,
          ),
        ),
        Padding(padding: const EdgeInsets.only(left: 5, top: 5),
          child:
          Text(name,
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'SFProDisplay',
                color: Colors.black,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(padding: const EdgeInsets.only(top: 5),
          child:
          Divider(color: Colors.black, ),
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(

            child: Container(
              color: Colors.black.withOpacity(0.01),
              child: Text(
                'Logout',
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}