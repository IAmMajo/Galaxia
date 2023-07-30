class HighlightModel {
  String name;
  String genre;
  String image;
  String platform;

  HighlightModel({
    required this.name,
    required this.genre,
    required this.image,
    required this.platform,
  });

  static List<HighlightModel> getHighlight() {
    List<HighlightModel> highlight = [];

    highlight.add(HighlightModel(
        name: 'Oppenheimer',
        genre: 'Action | Krieg | Biografie',
        image: "Oppenheimer.jpg",
        platform: 'Kino'));

    return highlight;
  }
}
