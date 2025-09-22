import 'package:flutter/material.dart';
import 'iconic_moment.dart';

class WorldCup {
  final int year;
  final String hostCountry;
  final String hostFlag;
  final String champion;
  final String championFlag;
  final String championEmblem;
  final String officialPoster;
  final String mascot;
  final String mascotName;
  final String playersPhoto;
  final String ballName;
  final String ballImage;
  final List<IconicMoment> iconicMoments;

  WorldCup({
    required this.year,
    required this.hostCountry,
    required this.hostFlag,
    required this.champion,
    required this.championFlag,
    required this.championEmblem,
    required this.officialPoster,
    required this.mascot,
    required this.mascotName,
    required this.playersPhoto,
    required this.ballName,
    required this.ballImage,
    required this.iconicMoments,
  });
}