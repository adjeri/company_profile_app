import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class CompanyDetailsIntroAnimation {
  CompanyDetailsIntroAnimation(this.controller)
      : bgdropOpacity = Tween(begin: 0.5, end: 1.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.000, 0.500, curve: Curves.ease))),
        bgdropBlur = Tween(begin: 0.0, end: 5.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.000, 0.800, curve: Curves.ease))),
        avatarSize = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.100, 0.400, curve: Curves.elasticInOut))),
        nameOpacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.350, 0.450, curve: Curves.easeIn))),
        locationOpacity = Tween(begin: 0.0, end: 0.84).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.500, 0.600, curve: Curves.easeIn))),
        dividerWidth = Tween(begin: 2.1, end: 225.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.650, 0.750, curve: Curves.easeInSine))),
        aboutOpacity = Tween(begin: 0.0, end: 0.85).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.750, 0.900, curve: Curves.bounceInOut))),
        courseScrollerXTranslation = Tween(begin: 60.0, end: 0.0).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(0.830, 1.0, curve: Curves.slowMiddle))),
        courseScrollerOpacity = Tween(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(0.830, 1.0, curve: Curves.easeOutQuint)));

  final AnimationController controller;
  final Animation<double> bgdropOpacity;
  final Animation<double> bgdropBlur;
  final Animation<double> avatarSize;
  final Animation<double> nameOpacity;
  final Animation<double> locationOpacity;
  final Animation<double> dividerWidth;
  final Animation<double> aboutOpacity;
  final Animation<double> courseScrollerXTranslation;
  final Animation<double> courseScrollerOpacity;
}
