class SoonEntriesModel {
  String datum;
  String titel;
  String logo;
  String des;
  String tags;
  String image;
  String fsk;
  String platform;

  SoonEntriesModel(
      {required this.datum,
      required this.titel,
      required this.logo,
      required this.des,
      required this.tags,
      required this.image,
      required this.fsk,
      required this.platform});

  static List<SoonEntriesModel> getSoonEntries() {
    List<SoonEntriesModel> soonentries = [];

    soonentries.add(
      SoonEntriesModel(
          datum: '31. Aug',
          titel: 'One Piece',
          des:
              'Abenteuer eines jungen Piraten, der nach dem legendären Schatz "One Piece" sucht. Actiongeladener Anime-Klassiker.',
          tags: 'Piraten ● Anime ● Schatzsuche',
          logo: 'assets/logos/OnePieceLogo.png',
          image: 'assets/OnePieceReal.webp',
          fsk: 'assets/FSK12',
          platform: 'assets/NetflixLogo.webp'),
    );

    soonentries.add(
      SoonEntriesModel(
          datum: '27. Aug',
          titel: 'Ghostbusters Legacy',
          des:
              'Fantasy-Abenteuerfilm, der die Ghostbusters-Legende fortführt. Eine Familie entdeckt paranormale Geheimnisse und erbt das Erbe der Geisterjäger.',
          tags: 'Fantasy ● Aufregend ● Mythen',
          logo: 'assets/logos/GhostbustersLegacyLogo.png',
          image: 'assets/GhostbustersLegacy.webp',
          fsk: 'assets/FSK12',
          platform: 'assets/NetflixLogo.webp'),
    );

    soonentries.add(
      SoonEntriesModel(
          datum: '25. Aug',
          titel: 'Gargoyeles',
          des:
              'Packende animierte Fantasy-Serie über Gargoyles, die nach 1000 Jahren erwachen und Manhattan beschützen.',
          tags: 'Nostalgie ● Fantasy ● Mythen',
          logo: 'assets/logos/GargoyelesLogo.png',
          image: 'assets/Gargoyels.webp',
          fsk: 'assets/FSK12',
          platform: 'assets/DisneyLogo.png'),
    );

    soonentries.add(SoonEntriesModel(
        datum: '23. Aug',
        titel: 'The Imperfects',
        des:
            'Familie mit übernatürlichen Kräften kämpft gegen dunkle Bedrohungen. Spannend und komplexe Charaktere.',
        tags: 'Fantasy ● Horror ● Romance',
        logo: 'assets/logos/TheImperfectsLogo.png',
        image: 'assets/TheImperfects.webp',
        fsk: 'assets/FSK16',
        platform: 'assets/NetflixLogo.webp'));

    return soonentries;
  }
}
