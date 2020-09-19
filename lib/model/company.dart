import 'package:flutter/cupertino.dart';

class Company {
  final String name;
  final String location;
  final String logo;
  final String backdropPhoto;
  final String about;
  final List<Activity> activities;

  Company(
      {@required this.name,
      @required this.location,
      @required this.logo,
      @required this.backdropPhoto,
      @required this.about,
      @required this.activities});
}

class Activity {
  Activity({@required this.title, @required this.thumbnail, @required this.url});

  final String title;
  final String thumbnail;
  final String url;
}
