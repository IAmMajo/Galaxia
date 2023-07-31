class NeuheitenModel {
  String name;
  String genre;
  String image;
  String platform;

  NeuheitenModel({
    required this.name,
    required this.genre,
    required this.image,
    required this.platform,
  });

  static List<NeuheitenModel> getneuheiten() {
    List<NeuheitenModel> neuheiten = [];

    neuheiten.add(
      NeuheitenModel(
          name: 'Good Doctor',
          genre: 'Commedy',
          image: "assets/series/GoodDoctor.jpg",
          platform: "Netflix"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'Arcane',
          genre: 'League of Legends',
          image: "assets/series/Arcane.jpg",
          platform: "Netflix"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'The 100',
          genre: 'Dystopian',
          image: "assets/series/The100.jpg",
          platform: "Prime"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'The Walking Dead',
          genre: 'Survival',
          image: "assets/series/TheWalkingDead.png",
          platform: "Netflix"),
    );
    neuheiten.add(
      NeuheitenModel(
          name: 'Mrs Marvel',
          genre: 'Marvel',
          image: "assets/series/MrsMarvel.webp",
          platform: "Disney"),
    );
    neuheiten.add(
      NeuheitenModel(
          name: 'Titans',
          genre: 'DC',
          image: "assets/series/Titans.jpg",
          platform: "Netflix"),
    );
    neuheiten.add(
      NeuheitenModel(
          name: 'The Boys',
          genre: 'Antiheros',
          image: "series/TheBoys.jpg",
          platform: "Prime"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'Breaking Bad',
          genre: 'Thriller',
          image: "series/BreakingBad.webp",
          platform: "Prime"),
    );

    return neuheiten;
  }
}
