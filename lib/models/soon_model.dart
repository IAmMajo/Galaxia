class SoonEntriesModel {
  String datum;
  String titel;
  String logo;
  String des;
  String tags; 
  String image;
  String platform;


    SoonEntriesModel({
      required this.datum,
      required this.titel,
      required this.logo,
      required this.des,
      required this.tags,
      required this.image,
      required this.platform
  });


  static List<SoonEntriesModel> getSoonEntries() {
    List<SoonEntriesModel> soonentries = [];

    soonentries.add(SoonEntriesModel
    (datum: '31. Aug', 
    titel: 'One Piece', 
    des: '"One Piece" ist ein beliebter Anime über Monkey D. Luffy, der Piratenkönig werden will und mit seiner Crew, der Strohhutbande, Abenteuer auf den Ozeanen erlebt, um den legendären Schatz "One Piece" zu finden. Mit Action, Drama und Humor begeistert die Serie weltweit ein breites Publikum.', 
    tags: 'Piraten ● Anime ● Schatzsuche',
    logo: 'assets/logos/OnePieceLogo.png',
    image: 'assets/OnePieceReal.webp',
    platform: 'Netflix'),
    );

    soonentries.add(SoonEntriesModel
    (datum: '27. Aug', 
    titel: 'Ghostbusters Legacy', 
    des: '"Ghostbusters: Legacy" ist ein Fantasy-Abenteuerfilm, der die Handlung der Original-"Ghostbusters"-Filme fortsetzt. Die Geschichte folgt einer Familie, die in einer Kleinstadt paranormalen Erscheinungen auf den Grund geht und das Vermächtnis der Geisterjäger wiederbelebt. Der Film kombiniert Geisterjäger-Action, Humor und emotionale Elemente und ist eine Hommage an die Kultklassiker.', 
    tags: 'Fantasy ● Aufregend ● Mythen',
    logo: 'assets/logos/GhostbustersLegacy.png',
    image: 'assets/GhostbustersLegacy.webp',
    platform: 'Netflix'),
    );

    soonentries.add(SoonEntriesModel
    (datum: '25. Aug', 
    titel: 'Gargoyeles', 
    des: '"Gargoyles" ist eine packende animierte Fantasy-Serie, die in Manhattan spielt. Die Handlung folgt einer Gruppe von Gargoyles, die zum Leben erwachen, nachdem sie 1000 Jahre in Stein verwandelt waren. Sie beschützen die Stadt vor bösen Mächten und lernen, sich in die moderne Welt einzufinden. Die Serie bietet eine einzigartige Mischung aus Action, Mythologie und tiefgründigen Charakteren.', 
    tags: 'Nostalgie ● Fantasy ● Mythen',
    logo: 'assets/logos/GargoyelesLogo.png',
    image: 'assets/Gargoyeles.webp',
    platform: 'Disney'),
    );

    soonentries.add(SoonEntriesModel
    (datum: '23. Aug', 
    titel: 'The Imperfects', 
    des: '"The Imperfects" ist eine aufregende Science-Fiction-Horrorserie, die das Leben einer Familie inmitten einer mysteriösen genetischen Mutation erforscht. Nachdem sie übernatürliche Kräfte erhalten, müssen sie ihre neuen Fähigkeiten beherrschen, während sie gegen dunkle Bedrohungen kämpfen. Die Serie bietet fesselnde Spannung, dramatische Enthüllungen und komplexe Charakterentwicklungen.', 
    tags: 'Fantasy ● Horror ● Romance',
    logo: 'assets/logos/TheImperfectsLogo.png',
    image: 'assets/TheImperfects.webp',
    platform: 'Netflix'));


  return soonentries; 
  }
}