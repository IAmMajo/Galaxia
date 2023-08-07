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
        name: 'One Piece',
        logo: "assets/logos/OnePieceLogo.png",
        genre: 'Piraten | Anime',
        image: "assets/series/OnePiece.jpg",
        platform: 'Netflix'));

    highlight.add(HighlightModel(
        name: 'Game of Thrones',
        logo: "assets/logos/GameofThronesLogo.png",
        genre: 'Middleage | Fantasy',
        image: "assets/series/GameofThrones.jpg",
        platform: 'Sky'));

    return highlight;
  }
}
