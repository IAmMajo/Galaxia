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
        name: 'The 100',
        logo: "assets/logos/The100Logo.webp",
        genre: 'Dystopian',
        image: "assets/series/The100.jpg",
        platform: 'Prime'));

    highlight.add(HighlightModel(
        name: 'Game of Thrones',
        logo: "assets/logos/GameofThronesLogo.webp",
        genre: 'Middleage | Fantasy',
        image: "assets/series/GameofThrones.jpg",
        platform: 'Sky'));

    return highlight;
  }
}
