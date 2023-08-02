class HighlightModel {
  String name;
  String logo;
  String genre;
  String image;
  String platform;

  HighlightModel({
    required this.name,
    required this.logo,
    required this.genre,
    required this.image,
    required this.platform,
  });

  static List<HighlightModel> getHighlight() {
    List<HighlightModel> highlight = [];

    highlight.add(HighlightModel(
        name: 'Oppenheimer',
        logo: "assets/logos/Oppenheimer.png",
        genre: 'Action | Krieg | Biografie',
        image: "assets/Oppenheimer.jpg",
        platform: 'Kino'));

    return highlight;
  }
}
