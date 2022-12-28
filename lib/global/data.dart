class MatchItemPreviewModel {

  final String title;
  final String genre;
  final String releaseDate;
  final String imagePath;

  MatchItemPreviewModel(
      {required this.title, required this.genre, required this.releaseDate, required this.imagePath});
}

List<MatchItemPreviewModel> testItems = [
  MatchItemPreviewModel(title: 'Baby Driver', genre: 'Action', releaseDate: '2017', imagePath: "assets/test_items/baby-driver.png"),
  MatchItemPreviewModel(title: 'Room', genre: 'Drama', releaseDate: '2015', imagePath: "assets/test_items/room.png"),
  MatchItemPreviewModel(title: 'Sicario', genre: 'Crime', releaseDate: '2015', imagePath: "assets/test_items/sicario.png"),
  MatchItemPreviewModel(title: "We're the millers", genre: 'Comedy', releaseDate: '2013', imagePath: "assets/test_items/were-the-millers.png"),
  MatchItemPreviewModel(title: 'Scott Pilgrim vs. the World', genre: 'Romance', releaseDate: '2010', imagePath: "assets/test_items/scott-pilgrim-vs-the-world.png"),
  MatchItemPreviewModel(title: 'Ratatouille', genre: 'Animation', releaseDate: '2007', imagePath: "assets/test_items/ratatouille.png"),
  MatchItemPreviewModel(title: 'Collateral', genre: 'Crime', releaseDate: '2004', imagePath: "assets/test_items/collateral.png"),
];