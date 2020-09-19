import 'package:company_profile/model/company.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ActivityCard extends StatelessWidget {
  ActivityCard(this.activity);

  final Activity activity;

  BoxDecoration _createShadowRoundCorners() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.4),
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black26,
            spreadRadius: 2.0,
            blurRadius: 10.0
        ),
      ],
    );
  }

  Widget _createThumbnail() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Stack(
        children: [
          Image.asset(activity.thumbnail),
          Positioned(
              bottom: 12.0,
              right: 12.0,
              child: _createdLinkButton()
          )
        ],
      ),
    );
  }

  Widget _createdLinkButton() {
    return Material(
      color: Colors.white24,
      type: MaterialType.circle,
      child: (
          IconButton(icon: Icon(Icons.link),
            onPressed: () async {
            if(await canLaunch(activity.url)){
              await launch(activity.url);
            }
            },
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

}

