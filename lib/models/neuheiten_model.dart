class NeuheitenModel {
  String name;
  String logo;
  String laenge;
  String genre;
  String image;
  String fsk;
  String des;
  String actor;
  String platform;
  String url;

  NeuheitenModel(
      {required this.name,
      required this.logo,
      required this.laenge,
      required this.genre,
      required this.image,
      required this.des,
      required this.fsk,
      required this.actor,
      required this.platform,
      required this.url});

  static List<NeuheitenModel> getneuheiten() {
    List<NeuheitenModel> neuheiten = [];

    neuheiten.add(
      NeuheitenModel(
          name: 'The Witcher',
          logo: 'assets/logos/TheWitcherLogo.png',
          laenge: '3 Staffeln / 24 Folgen',
          genre: 'Fantasy',
          fsk: 'assets/FSK18',
          des:
              '"The Witcher" ist eine düstere Fantasy-Serie, die das Leben von Geralt von Riva, einem Monsterjäger, und den Schicksalen von Ciri und Yennefer miteinander verwebt. Action, Magie und Intrigen erwarten die Zuschauer.',
          image: "assets/series/TheWitcher.jpg",
          actor: 'Henry Cavil, Anya Chalotra, Freya Allen',
          platform: "assets/NetflixLogo.webp",
          url: "https://www.netflix.com/search?q=The%20Witcher&jbv=80189685"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'Stranger Things',
          laenge: '4 Staffeln / 34 Folgen',
          logo: 'assets/logos/StrangerThingsLogo.png',
          genre: 'Horror',
          fsk: 'assets/FSK16',
          des:
              '"Stranger Things" ist eine mitreißende Science-Fiction-Mysteryserie, die in den 1980er Jahren spielt. Die Handlung konzentriert sich auf eine Gruppe von Kindern in der Kleinstadt Hawkins, als einer ihrer Freunde plötzlich verschwindet. Als sie nach ihm suchen, treffen sie auf ein mysteriöses Mädchen mit telekinetischen Fähigkeiten und stolpern in eine düstere Parallelwelt, genannt "das Upside Down". Die Serie kombiniert Elemente aus Horror, Abenteuer und Drama und beeindruckt durch nostalgische Referenzen, spannende Handlungsstränge und sympathische Charaktere. "Stranger Things" hat eine breite Fangemeinde gewonnen und gilt als Kultserie der Streaming-Ära.',
          image: "assets/series/StrangerThings.jpg",
          actor: 'Millie Bobby Brown, Finn Wolfhard, Noah Schnapp',
          platform: "assets/NetflixLogo.webp",
          url:
              "https://www.netflix.com/search?q=Stranger%20Things&jbv=80057281"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'Good Doctor',
          logo: 'assets/logos/GoodDoctorLogo.png',
          laenge: '6 Staffeln / 116 Folgen',
          genre: 'Commedy',
          fsk: 'assets/FSK12',
          image: "assets/series/GoodDoctor.jpg",
          actor: 'Freddie Highmore, Antonia Thomas, Paige Spara',
          des:
              '"Good Doctor" ist eine fesselnde medizinische Dramaserie, die das Leben von Dr. Shaun Murphy, einem jungen Chirurgen mit Autismus und Savant-Syndrom, im renommierten San Jose St. Bonaventure Hospital verfolgt. Trotz seiner außergewöhnlichen Fähigkeiten muss Shaun sich Vorurteilen und Herausforderungen stellen, während er seine medizinischen Talente unter Beweis stellt und eine emotionale Verbindung zu seinen Kollegen aufbaut. Die Serie bietet packende medizinische Fälle und berührende persönliche Entwicklungen.',
          platform: "assets/NetflixLogo.webp",
          url: "https://www.netflix.com/search?q=Good%20Doctor&jbv=80176893"),
    );

    neuheiten.add(
      NeuheitenModel(
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

    neuheiten.add(
      NeuheitenModel(
          name: 'The 100',
          laenge: '8 Staffeln / 100 Folgen',
          genre: 'Dystopian',
          logo: 'assets/logos/The100Logo.webp',
          fsk: 'assets/FSK16',
          des:
              '"The 100" ist eine packende Science-Fiction-Serie, die in einer postapokalyptischen Welt spielt. Nach einem verheerenden Atomkrieg lebt die Menschheit auf einer Raumstation namens Ark. Als die Ressourcen knapp werden, entsendet die Ark 100 jugendliche Straftäter zur Erde, um herauszufinden, ob sie wieder bewohnbar ist. Die Serie folgt ihrer epischen Reise, in der sie mit gefährlichen Herausforderungen, moralischen Dilemmata und neuen Kulturen konfrontiert werden. "The 100" bietet fesselnde Charaktere, düstere Spannung und emotionale Wendungen.',
          image: "assets/series/The100.jpg",
          actor: 'Eliza Taylor, Bob Morley, Marie Avgeropulos',
          platform: "assets/PrimeLogo.png",
          url:
              "https://www.amazon.de/Der-Anschlag/dp/B012929DNQ/ref=sr_1_1?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2HA4NZTP98J3N&keywords=The+100&qid=1691394640&s=instant-video&sprefix=the+100%2Cinstant-video%2C89&sr=1-1"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'The Walking Dead',
          genre: 'Survival',
          laenge: '9 Staffeln / 177 Folgen',
          logo: 'assets/logos/TheWalkingDeadLogo.png',
          fsk: 'assets/FSK18',
          actor: 'Norman Reedus, Andrew Lincoln, Jeffrey Dean Morgan',
          des:
              '"The Walking Dead" ist eine beliebte postapokalyptische Horrorserie, die sich in einer von Zombies (Walkern) heimgesuchten Welt abspielt. Die Handlung folgt einer Gruppe von Überlebenden, die nach einer Zombie-Apokalypse um ihr Leben kämpfen. Sie durchlaufen eine Reise voller Gefahren, Verluste und moralischer Prüfungen, während sie versuchen, eine sichere Zuflucht zu finden. Die Serie zeichnet sich durch ihre intensiven Zombie-Action-Szenen, komplexe Charakterentwicklungen und düstere Atmosphäre aus, die die Zuschauer in ihren Bann zieht.',
          image: "assets/series/TheWalkingDead.png",
          platform: "assets/NetflixLogo.webp",
          url:
              "https://www.netflix.com/search?q=The%20Walking%20Dead&jbv=70177057"),
    );
    neuheiten.add(
      NeuheitenModel(
          name: 'Mrs Marvel',
          laenge: '1 Staffel / 12 Folgen',
          logo: 'assets/logos/MrsMarvelLogo.png',
          genre: 'Marvel',
          fsk: 'assets/FSK12',
          actor: 'Iman Vellani, Yasmeen Fletcher, Mehwish Hayat',
          des:
              '"Ms. Marvel" ist eine aufregende Superhelden-Serie, die auf dem beliebten Marvel-Charakter Kamala Khan basiert. Die Handlung folgt Kamala, einer jungen muslimischen Teenagerin mit außergewöhnlichen Kräften. Sie entdeckt ihre Fähigkeit, ihre Körpergröße zu verändern und Gestalt zu wandeln. Während sie mit den Herausforderungen des Teenager-Daseins und ihrer kulturellen Identität kämpft, setzt sie ihre Superkräfte ein, um ihre Gemeinschaft zu beschützen. Die Serie bietet eine einzigartige Darstellung von Vielfalt, mitreißende Action und inspirierende Botschaften.',
          image: "assets/series/MrsMarvel.webp",
          platform: "assets/DisneyLogo.png",
          url:
              "https://www.disneyplus.com/de-de/series/ms-marvel/45BsikoMcOOo"),
    );
    neuheiten.add(
      NeuheitenModel(
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
    neuheiten.add(
      NeuheitenModel(
          name: 'The Boys',
          laenge: '3 Staffeln / 24 Folgen',
          logo: 'assets/logos/TheBoysLogo.png',
          genre: 'Antiheros',
          fsk: 'assets/FSK18',
          actor: 'Antony Starr, Karl Urban, Jack Quaid',
          des:
              '"The Boys" auf ist eine düstere und brutale Superhelden-Serie, die in einer Welt spielt, in der Superhelden korrupt und machtmissbrauchend sind. Die Handlung folgt einer Gruppe von Normalbürgern, die sich als "The Boys" zusammenschließen, um die korrupten Superhelden zur Rechenschaft zu ziehen. Die Serie ist bekannt für ihre satirische Darstellung von Superhelden-Klischees, ihre schockierenden Wendungen und ihre gewalttätigen Auseinandersetzungen. "The Boys" bietet eine einzigartige Perspektive auf das Genre und ist voller Action, schwarzen Humor und moralischer Ambivalenz.',
          image: "assets/series/TheBoys.jpg",
          platform: "assets/PrimeLogo.png",
          url:
              "https://www.amazon.de/Staffel-1-Teaser-Trailer/dp/B0875PFH24/ref=sr_1_1?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3BLSPGWM2URLT&keywords=The+Boys&qid=1691394662&s=instant-video&sprefix=the+boys%2Cinstant-video%2C98&sr=1-1"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'Breaking Bad',
          laenge: '5 Staffeln / 62 Folgen',
          logo: 'assets/logos/BreakingBadLogo.png',
          genre: 'Thriller',
          fsk: 'assets/FSK16',
          actor: 'Bryan Cranston, Aaron Paul, Anna Gunn',
          des:
              '"Breaking Bad" ist eine preisgekrönte Dramaserie, die das Leben von Walter White, einem an Krebs erkrankten Chemielehrer, in eine düstere Welt der Drogenkriminalität führt. Um finanzielle Sicherheit für seine Familie zu gewährleisten, entscheidet sich Walter, Methamphetamin herzustellen und in die Unterwelt einzutauchen. Die Serie erforscht Walter Whites Verwandlung vom biederen Familienvater zum skrupellosen Drogenboss. "Breaking Bad" bietet brillante Schauspielkunst, komplexe Charakterentwicklungen und eine fesselnde Handlung, die den Zuschauer von Anfang bis Ende fesselt.',
          image: "assets/series/BreakingBad.webp",
          platform: "assets/NetflixLogo.webp",
          url: "https://www.netflix.com/search?q=Breaking%20bad&jbv=70143836"),
    );
    neuheiten.add(
      NeuheitenModel(
          name: 'Star Wars: Clone Wars',
          laenge: '7 Staffeln / 133 Folgen',
          logo: 'assets/logos/StarWarsCloneWarsLogo.png',
          genre: 'Star Wars',
          fsk: 'assets/FSK12',
          actor: 'Matt Lanter, Ashley Drane, Dave Filoni',
          des:
              '"Star Wars: The Clone Wars" ist eine animierte Science-Fiction-Serie, die im Star Wars-Universum angesiedelt ist. Die Handlung findet zwischen den Episoden II und III der Star Wars-Filmreihe statt und beleuchtet die Klonkriege, die die Galaxie erschüttern. Die Serie folgt den Abenteuern von Jedi-Rittern wie Anakin Skywalker, Obi-Wan Kenobi und Ahsoka Tano sowie den Klonkriegern, während sie gegen die Separatisten und die dunkle Seite kämpfen. "Clone Wars" bietet epische Schlachten, fesselnde Charakterentwicklungen und eine tiefe Erweiterung der Star Wars-Geschichte.',
          image: "assets/series/StarWarsCloneWars.jpeg",
          platform: "assets/DisneyLogo.png",
          url:
              "https://www.disneyplus.com/de-de/series/star-wars-the-clone-wars/1wYXzjabXGVZ"),
    );
    neuheiten.add(
      NeuheitenModel(
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
    neuheiten.add(
      NeuheitenModel(
          name: 'Arrow',
          laenge: '8 Staffeln / 160 Folgen',
          logo: 'assets/logos/ArrowLogo.webp',
          genre: 'DC',
          fsk: 'assets/FSK16',
          actor: 'Stephen Amell, Emily Bett Rickards, Katie Cassidy',
          des:
              '"Arrow" ist eine actiongeladene Superhelden-Serie, die die Geschichte von Oliver Queen erzählt, einem reichen Playboy, der fünf Jahre lang auf einer einsamen Insel gestrandet war. Nach seiner Rückkehr nach Starling City beschließt er, als Kapuzenmann "Arrow" Verbrecher zu bekämpfen und seine Stadt zu retten. Die Serie verfolgt Olivers epische Reise als Superheld, seine persönlichen Konflikte und die Entwicklung eines Teams von Helden. "Arrow" bietet packende Action-Szenen, komplexe Charakterentwicklungen und eine mitreißende Handlung, die die Zuschauer von Anfang bis Ende fesselt.',
          image: "assets/series/Arrow.jpg",
          platform: "assets/NetflixLogo.webp",
          url: "https://www.netflix.com/search?q=Arrow&jbv=70242081"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'Wanda Vision',
          laenge: '1 Staffel / 12 Folgen',
          logo: 'assets/logos/WandaVisionLogo.png',
          genre: 'Marvel',
          fsk: 'assets/FSK12',
          actor: 'Elizabeth Olsen, Kat Dennings, Kathrin Hahn',
          des:
              '"WandaVision" ist eine faszinierende und innovative Superhelden-Serie im Marvel Cinematic Universe. Die Handlung dreht sich um Wanda Maximoff und Vision, die ein scheinbar idyllisches Vorstadtleben führen. Doch bald merken sie, dass nicht alles so ist, wie es scheint, und sie stecken in einer mysteriösen Realität fest. Die Serie kombiniert geschickt verschiedene TV-Äras mit Superhelden-Elementen und bietet eine einzigartige Mischung aus Drama, Komödie und Sci-Fi. "WandaVision" überrascht mit originellen Ideen, überragender Schauspielkunst und einer tiefgreifenden, emotionalen Geschichte.',
          image: "assets/series/WandaVision.webp",
          platform: "assets/NetflixLogo.webp",
          url:
              "https://www.disneyplus.com/de-de/series/wandavision/4SrN28ZjDLwH"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'A Quiet Place',
          laenge: '94 min',
          logo: 'assets/logos/AQuietPlaceLogo.png',
          genre: 'Horror',
          fsk: 'assets/FSK16',
          actor: 'John Krasinski, Millicent Simmonds, Noah Jupe',
          des:
              '"A Quiet Place" ist ein spannender Horrorfilm, der sich in einer postapokalyptischen Welt abspielt. Die Erde wird von mysteriösen Kreaturen heimgesucht, die auf Geräusche reagieren und jeden Laut jagdähnlich verfolgen. Die Handlung folgt einer Familie, die ums Überleben kämpft und ihre Kommunikation auf das Nötigste beschränken muss. Der Film beeindruckt durch seine atmosphärische Inszenierung, starke Schauspielleistungen und den cleveren Einsatz von Stille und Spannung. "A Quiet Place" bietet ein intensives Erlebnis, das die Zuschauer von Anfang bis Ende gefesselt hält.',
          image: "assets/AQuietPlace.webp",
          platform: "assets/NetflixLogo.webp",
          url:
              "https://www.netflix.com/search?q=A%20Quiet%20Place&jbv=80213226"),
    );

    return neuheiten;
  }
}
