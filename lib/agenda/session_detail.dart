
import 'dart:math';
import 'package:devfest_demo/home/speaker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_demo/home/session.dart';
import 'package:devfest_demo/universal/dev_scaffold.dart';
import 'package:devfest_demo/utils/tools.dart';
import 'package:flutter/material.dart';

class SessionDetail extends StatelessWidget{
  static const String routeName = '/session_detail';
  
  final Session session;

  const SessionDetail({Key key,@required this.session}) 
    : super(key: key);
  
   Widget socialActions(context,) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookF,
                size: 15,
              ),
              onPressed: () {
                launch(speakers[0].fbUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.twitter,
                size: 15,
              ),
              onPressed: () {
                launch(speakers[0].twitterUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 15,
              ),
              onPressed: () {
                launch(speakers[0].linkedinUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.instagram,
                size: 15,
              ),
              onPressed: () {
                launch(speakers[0].instagramUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.github,
                size: 15,
              ),
              onPressed: () {
                launch(speakers[0].githubUrl);
              },
            ),
          ],
        ),
      );

  
  Widget build(BuildContext context){
    return DevScaffold(
      title: session.speakerName,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Hero(
                  tag: session.speakerImage,
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundImage: CachedNetworkImageProvider(
                      session.speakerImage,
                    ),
                  )
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "${session.speakerDesc}",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title.copyWith(
                  fontSize: 16,
                  color: Tools.multiColors[Random().nextInt(4)],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "${session.sessionTitle}",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title.copyWith(
                  fontSize: 20,
                  color: Tools.multiColors[Random().nextInt(4)],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "${session.sessionDesc}",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title.copyWith(
                  fontSize: 15,
                  color: Tools.multiColors[Random().nextInt(4)],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              socialActions(context),
            ],
          ),
          
        ),
      ),
    );
  }
}
  