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
        name: 'Game of Thrones',
        logo: "assets/logos/GameofThronesLogo.png",
        genre: 'Fantasy | Middleage',
        image: "assets/series/GameofThrones.jpg",
        platform: 'Sky'));

    return highlight;
  }
}
