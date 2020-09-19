import 'package:company_profile/model/company.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'dart:ui' as ui;

import 'company_details_intro_animation.dart';

class CompanyDetailsPage extends StatelessWidget {
  CompanyDetailsPage({@required this.company, @required AnimationController controller}) :
        animation = CompanyDetailsIntroAnimation(controller);

  final Company company;
  final CompanyDetailsIntroAnimation animation;

  Widget _createAnimation(BuildContext context, Widget child){
    return Stack(
      fit: StackFit.expand,
      children: [
        Opacity(opacity: animation.bgdropOpacity.value,
          child: Image.asset(company.backdropPhoto, fit: BoxFit.cover,),
        ),
        BackdropFilter(filter: ui.ImageFilter.blur(
          sigmaX: animation.bgdropBlur.value,
          sigmaY: animation.bgdropBlur.value,
        ),
          child: Container(
            color: Colors.black.withOpacity(0.3),
            child: _createContent(),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(animation: animation.controller, builder: _createAnimation),
    );
  }

  Widget _createContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _createLogoAvatar(),
          _createAboutCompany(),
        ],
      ),
    );
  }

  Widget _createLogoAvatar() {
    return Transform(transform: Matrix4.diagonal3Values(animation.avatarSize.value, animation.avatarSize.value, 1.0),
      alignment: Alignment.center,
      child: Container(
        width: double.infinity,
        height: 110.0,
        margin: EdgeInsets.only(top:32.0, left:  19.0),
        padding: EdgeInsets.all(3.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(company.logo, width: 25.0, height: 25.0, fit: BoxFit.cover,),
            ),
            Padding(padding: EdgeInsets.all(8.0),
              child: Text("Short introduction",
                style: TextStyle(
                  fontSize: 19 * animation.avatarSize.value + 2.0,
                  color: Colors.white70
                ),
              ),
            )
          ],
        ),

      ),
    );
  }

  Widget _createAboutCompany(){
    return Padding(
      padding: EdgeInsets.only(top: 14.0, left: 14.0, right: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(company.name, style: TextStyle(
            color: Colors.white.withOpacity(animation.nameOpacity.value),
            fontSize: 30.0 * animation.avatarSize.value + 2.0,
            fontWeight: FontWeight.bold
          ),
          ),
          Text(company.location, style: TextStyle(
            color: Colors.white.withOpacity(animation.locationOpacity.value),
            fontWeight: FontWeight.w500
          ),
          ),
          Container(
            color: Colors.white.withOpacity(0.79),
            margin: EdgeInsets.symmetric(vertical: 14.0),
            width: animation.dividerWidth.value,
            height: 1.0,
          )
        ],
      ),
    );
  }
}
