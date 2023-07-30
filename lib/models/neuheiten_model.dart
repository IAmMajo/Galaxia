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
          image: "series/GoodDoctor.jpg",
          platform: "N"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'Arcane',
          genre: 'League of Legends',
          image: "series/Arcane.jpg",
          platform: "N"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'The 100',
          genre: 'Dystopian',
          image: "series/The100.jpg",
          platform: "P"),
    );

    return neuheiten;
  }
}
