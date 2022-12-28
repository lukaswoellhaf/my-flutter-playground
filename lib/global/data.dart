import 'package:flutter/material.dart';
import 'package:my_flutter_playground/global/styles.dart';

class MatchItemPreviewModel {

  String? title;
  String? genre;
  String? releaseDate;
  LinearGradient? color;

  MatchItemPreviewModel(this.title, this.genre, this.releaseDate, this.color);
}

List<MatchItemPreviewModel> testItems = [
  MatchItemPreviewModel('Baby Driver', 'Action', '2017', gradientBlue),
  MatchItemPreviewModel('Room', 'Drama', '2015', gradientPink),
  MatchItemPreviewModel('Sicario', 'Crime', '2015', gradientPurple),
  MatchItemPreviewModel("We're the millers", 'Comedy', '2013', gradientRed),
  MatchItemPreviewModel('Scott Pilgrim vs. the World', 'Romance', '2010', gradientBlue),
  MatchItemPreviewModel('Ratatouille', 'Animation', '2007', gradientPink),
  MatchItemPreviewModel('Collateral', 'Crime', '2004', gradientRed),
];