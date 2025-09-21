import 'package:flutter/material.dart';
import 'iconic_moment.dart';

class WorldCup {
  final int year;
  final String hostCountry;
  final String hostFlag;
  final String champion;
  final String championFlag;
  final String officialPoster;
  final String mascot;
  final String playersPhoto;
  final List<IconicMoment> iconicMoments;

  WorldCup({
    required this.year,
    required this.hostCountry,
    required this.hostFlag,
    required this.champion,
    required this.championFlag,
    required this.officialPoster,
    required this.mascot,
    required this.playersPhoto,
    required this.iconicMoments,
  });
}