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
        name: 'Stranger Things',
        logo: "assets/logos/StrangerThingsLogo.png",
        genre: '90s | Horror',
        image: "assets/series/StrangerThings.jpg",
        platform: 'Netflix'));

    return highlight;
  }
}
