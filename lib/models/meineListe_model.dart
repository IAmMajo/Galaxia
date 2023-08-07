class MeineListeModel {
  String name;
  String logo;
  String genre;
  String fsk;
  String actor;
  String des;
  String image;
  String platform;
  String laenge;
  String url;

  MeineListeModel({
      required this.name,
      required this.logo,
      required this.laenge,
      required this.genre,
      required this.image,
      required this.des,
      required this.fsk,
      required this.actor,
      required this.platform,
      required this.url
  });

  static List<MeineListeModel> getmeineListe() {
    List<MeineListeModel> meineListe = [];

    meineListe.add(
      MeineListeModel(
          name: 'Titans',
          laenge: '4 Staffeln / 37 Folgen',
          logo: 'assets/logos/TitansLogo.png',
          genre: 'DC',
          fsk: 'assets/FSK16',
          actor: 'Brenton Thwaites, Teagan Croft, Anna Diop',
          des:
              '"Titans" ist eine actiongeladene Superhelden-Serie, die auf dem beliebten DC-Comic-Team "Teen Titans" basiert. Die Handlung folgt einer Gruppe junger Superhelden, angeführt von Robin (Dick Grayson), die sich zusammenschließen, um das Böse zu bekämpfen und die Welt zu retten. Jedes Mitglied hat eine einzigartige Fähigkeit und Hintergrundgeschichte, die im Verlauf der Serie erkundet werden. "Titans" bietet spektakuläre Action-Szenen, komplexe Charakterentwicklungen und eine packende Handlung voller überraschender Wendungen.',
          image: "assets/series/Titans.jpg",
          platform: "assets/NetflixLogo.webp",
          url: "https://www.netflix.com/search?q=Titans&jbv=80218200"),
    );

    meineListe.add(
      MeineListeModel(
          name: 'Arcane',
          logo: 'assets/logos/ArcaneLogo.png',
          laenge: '1 Staffel / 9 Folgen',
          genre: 'League of Legends',
          fsk: 'assets/FSK16',
          image: "assets/series/Arcane.jpg",
          actor: 'Ella Purnell, Hailee Steinfield, Katie Leung',
          des:
              '"Arcane" ist eine fesselnde animierte Serie, die auf dem beliebten Videospiel "League of Legends" basiert. Die Handlung entfaltet sich in der dystopischen Stadt Piltover und dem düsteren Untergrund Zhaun. Die Geschichte dreht sich um die Schwestern Vi und Jinx, deren Beziehung von Liebe und Rivalität geprägt ist. Die Serie beeindruckt durch atemberaubende Animationen, tiefgründige Charakterentwicklungen und eine komplexe Handlung voller Spannung, Action und emotionalem Tiefgang.',
          platform: "assets/NetflixLogo.webp",
          url: "https://www.netflix.com/search?q=Arcane&jbv=81435684"),
    );

    meineListe.add(
      MeineListeModel(
          name: 'Supergirl',
          laenge: '6 Staffeln / 120 Folgen',
          logo: 'assets/logos/SupergirlLogo.webp',
          genre: 'DC',
          fsk: 'assets/FSK16',
          actor: 'Melissa Benoist, Chyler Leigh, Katie McGrath',
          des:
              '"Supergirl" ist eine mitreißende Superhelden-Serie, die die Geschichte von Kara Zor-El erzählt, der Cousine von Superman. Nachdem sie jahrelang ihre Kräfte verborgen hat, entscheidet sich Kara, ihre Superkräfte einzusetzen, um die Menschen zu beschützen und als Supergirl die Welt zu retten. Die Serie verfolgt ihre Abenteuer und Herausforderungen, während sie gegen mächtige Bösewichte und persönliche Konflikte kämpft. "Supergirl" bietet spannende Action, emotionale Entwicklungen und eine inspirierende Botschaft über Mut, Selbstfindung und Heldentum.',
          image: "assets/series/Supergirl.webp",
          platform: "assets/NetflixLogo.webp",
          url: "https://www.netflix.com/search?q=Supergirl&jbv=80065386"),
    );

    return meineListe;
  }
}
