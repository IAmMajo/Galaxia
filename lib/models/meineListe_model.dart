class MeineListeModel {
  String name;
  String logo;
  String genre;
  String fsk;
  String actor;
  String des;
  String image;
  String platform;

  MeineListeModel({
    required this.name,
    required this.logo,
    required this.genre,
    required this.actor,
    required this.fsk,
    required this.des,
    required this.image,
    required this.platform,
  });

  static List<MeineListeModel> getmeineListe() {
    List<MeineListeModel> meineListe = [];

    meineListe.add(
      MeineListeModel(
          name: 'Spider-Man',
          genre: 'MARVEL',
          fsk: 'FSK12',
          actor: 'Tom Holland, Andrew Garfield, Tobey Maguire',
          logo: "assets/logos/SpiderManNoWayHomeLogo.png",
          des:
              '"Spider-Man: No Way Home" ist ein mitreißender Superheldenfilm, der Teil des Marvel Cinematic Universe (MCU) ist. Die Handlung folgt Peter Parker (Spider-Man), der nach einem Identitätskonflikt um Hilfe bittet, um sein Geheimnis zu schützen. Dabei gerät er in ein multidimensionales Abenteuer und trifft auf bekannte Schurken und Helden aus früheren Spider-Man-Filmen. Der Film beeindruckt durch atemberaubende Action, emotionale Momente und überraschende Wendungen. "Spider-Man: No Way Home" bietet eine epische Fortsetzung der Spinnenmann-Saga, die Fans begeistert und neue Zuschauer fesselt.',
          image: "assets/SpiderManNoWayHome.jpg",
          platform: "assets/DisneyLogo.png"),
    );

    meineListe.add(
      MeineListeModel(
          name: 'Game of Thrones',
          genre: 'Mittelalter',
          fsk: 'FSK18',
          actor: 'Emilia Clark, Sophie Turner, Maisie Williams',
          logo: "assets/logos/GameofThronesLogo.png",
          des:
              '"Game of Thrones" ist eine epische Fantasy-Serie, basierend auf den Romanen von George R.R. Martin. Die Handlung spielt in den sieben Königreichen von Westeros und folgt mehreren Adelsfamilien, die um den eisernen Thron kämpfen. Politische Intrigen, blutige Schlachten und überraschende Wendungen prägen die Serie. Die Charaktere sind vielschichtig und die Handlung voller unerwarteter Ereignisse. "Game of Thrones" beeindruckt durch seine visuelle Pracht, komplexe Erzählweise und tiefgreifende Weltentwicklung. Die Serie gilt als Meisterwerk der Fernsehunterhaltung und hat eine riesige Fangemeinde gewonnen.',
          image: "assets/series/GameofThrones.jpg",
          platform: "assets/WOWLogo.png"),
    );

    meineListe.add(
      MeineListeModel(
          name: 'König der Löwen',
          genre: 'Disney',
          fsk: 'FSK6',
          actor: 'Donald Glover, Beyoncé, James Earl Jones',
          logo: "assets/logos/TheLionKingLogo.png",
          des:
              'Der neue "König der Löwen" ist eine atemberaubende Neuverfilmung des beliebten Disney-Klassikers. Der Film nutzt bahnbrechende CGI-Technologie, um die afrikanische Savanne und ihre Tierwelt lebendig werden zu lassen. Die Handlung folgt Simba, einem jungen Löwen, der nach dem Tod seines Vaters, Mufasa, aus seinem Königreich verbannt wird. Simba muss seinen Platz als rechtmäßiger König einnehmen und die Verantwortung für sein Volk übernehmen. Der Film beeindruckt durch seine visuelle Pracht, seine ikonische Filmmusik und die bewegende Geschichte von Mut, Loyalität und Selbstfindung.',
          image: "assets/TheLionKingRemake.jpg",
          platform: "assets/DisneyLogo.png"),
    );

    return meineListe;
  }
}
