class NeuheitenModel {
  String name;
  String genre;
  String image;
  String des;
  String platform;

  NeuheitenModel({
    required this.name,
    required this.genre,
    required this.image,
    required this.des,
    required this.platform,
  });

  static List<NeuheitenModel> getneuheiten() {
    List<NeuheitenModel> neuheiten = [];

    neuheiten.add(
      NeuheitenModel(
          name: 'Good Doctor',
          genre: 'Commedy',
          image: "assets/series/GoodDoctor.jpg",
          des:
              '"Good Doctor" ist eine fesselnde medizinische Dramaserie, die das Leben von Dr. Shaun Murphy, einem jungen Chirurgen mit Autismus und Savant-Syndrom, im renommierten San Jose St. Bonaventure Hospital verfolgt. Trotz seiner außergewöhnlichen Fähigkeiten muss Shaun sich Vorurteilen und Herausforderungen stellen, während er seine medizinischen Talente unter Beweis stellt und eine emotionale Verbindung zu seinen Kollegen aufbaut. Die Serie bietet packende medizinische Fälle und berührende persönliche Entwicklungen.',
          platform: "Netflix"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'Arcane',
          genre: 'League of Legends',
          image: "assets/series/Arcane.jpg",
          des:
              '"Arcane" ist eine fesselnde animierte Serie, die auf dem beliebten Videospiel "League of Legends" basiert. Die Handlung entfaltet sich in der dystopischen Stadt Piltover und dem düsteren Untergrund Zhaun. Die Geschichte dreht sich um die Schwestern Vi und Jinx, deren Beziehung von Liebe und Rivalität geprägt ist. Die Serie beeindruckt durch atemberaubende Animationen, tiefgründige Charakterentwicklungen und eine komplexe Handlung voller Spannung, Action und emotionalem Tiefgang.',
          platform: "Netflix"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'The 100',
          genre: 'Dystopian',
          des:
              '"The 100" ist eine packende Science-Fiction-Serie, die in einer postapokalyptischen Welt spielt. Nach einem verheerenden Atomkrieg lebt die Menschheit auf einer Raumstation namens Ark. Als die Ressourcen knapp werden, entsendet die Ark 100 jugendliche Straftäter zur Erde, um herauszufinden, ob sie wieder bewohnbar ist. Die Serie folgt ihrer epischen Reise, in der sie mit gefährlichen Herausforderungen, moralischen Dilemmata und neuen Kulturen konfrontiert werden. "The 100" bietet fesselnde Charaktere, düstere Spannung und emotionale Wendungen.',
          image: "assets/series/The100.jpg",
          platform: "Prime"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'The Walking Dead',
          genre: 'Survival',
          des:
              '"The Walking Dead" ist eine beliebte postapokalyptische Horrorserie, die sich in einer von Zombies (Walkern) heimgesuchten Welt abspielt. Die Handlung folgt einer Gruppe von Überlebenden, die nach einer Zombie-Apokalypse um ihr Leben kämpfen. Sie durchlaufen eine Reise voller Gefahren, Verluste und moralischer Prüfungen, während sie versuchen, eine sichere Zuflucht zu finden. Die Serie zeichnet sich durch ihre intensiven Zombie-Action-Szenen, komplexe Charakterentwicklungen und düstere Atmosphäre aus, die die Zuschauer in ihren Bann zieht.',
          image: "assets/series/TheWalkingDead.png",
          platform: "Netflix"),
    );
    neuheiten.add(
      NeuheitenModel(
          name: 'Mrs Marvel',
          genre: 'Marvel',
          des:
              '"Ms. Marvel" ist eine aufregende Superhelden-Serie, die auf dem beliebten Marvel-Charakter Kamala Khan basiert. Die Handlung folgt Kamala, einer jungen muslimischen Teenagerin mit außergewöhnlichen Kräften. Sie entdeckt ihre Fähigkeit, ihre Körpergröße zu verändern und Gestalt zu wandeln. Während sie mit den Herausforderungen des Teenager-Daseins und ihrer kulturellen Identität kämpft, setzt sie ihre Superkräfte ein, um ihre Gemeinschaft zu beschützen. Die Serie bietet eine einzigartige Darstellung von Vielfalt, mitreißende Action und inspirierende Botschaften.',
          image: "assets/series/MrsMarvel.webp",
          platform: "Disney"),
    );
    neuheiten.add(
      NeuheitenModel(
          name: 'Titans',
          genre: 'DC',
          des:
              '"Titans" ist eine actiongeladene Superhelden-Serie, die auf dem beliebten DC-Comic-Team "Teen Titans" basiert. Die Handlung folgt einer Gruppe junger Superhelden, angeführt von Robin (Dick Grayson), die sich zusammenschließen, um das Böse zu bekämpfen und die Welt zu retten. Jedes Mitglied hat eine einzigartige Fähigkeit und Hintergrundgeschichte, die im Verlauf der Serie erkundet werden. "Titans" bietet spektakuläre Action-Szenen, komplexe Charakterentwicklungen und eine packende Handlung voller überraschender Wendungen.',
          image: "assets/series/Titans.jpg",
          platform: "Netflix"),
    );
    neuheiten.add(
      NeuheitenModel(
          name: 'The Boys',
          genre: 'Antiheros',
          des:
              '"The Boys" auf ist eine düstere und brutale Superhelden-Serie, die in einer Welt spielt, in der Superhelden korrupt und machtmissbrauchend sind. Die Handlung folgt einer Gruppe von Normalbürgern, die sich als "The Boys" zusammenschließen, um die korrupten Superhelden zur Rechenschaft zu ziehen. Die Serie ist bekannt für ihre satirische Darstellung von Superhelden-Klischees, ihre schockierenden Wendungen und ihre gewalttätigen Auseinandersetzungen. "The Boys" bietet eine einzigartige Perspektive auf das Genre und ist voller Action, schwarzen Humor und moralischer Ambivalenz.',
          image: "assets/series/TheBoys.jpg",
          platform: "Prime"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'Breaking Bad',
          genre: 'Thriller',
          des:
              '"Breaking Bad" ist eine preisgekrönte Dramaserie, die das Leben von Walter White, einem an Krebs erkrankten Chemielehrer, in eine düstere Welt der Drogenkriminalität führt. Um finanzielle Sicherheit für seine Familie zu gewährleisten, entscheidet sich Walter, Methamphetamin herzustellen und in die Unterwelt einzutauchen. Die Serie erforscht Walter Whites Verwandlung vom biederen Familienvater zum skrupellosen Drogenboss. "Breaking Bad" bietet brillante Schauspielkunst, komplexe Charakterentwicklungen und eine fesselnde Handlung, die den Zuschauer von Anfang bis Ende fesselt.',
          image: "assets/series/BreakingBad.webp",
          platform: "Prime"),
    );
    neuheiten.add(
      NeuheitenModel(
          name: 'Star Wars: Clone Wars',
          genre: 'Star Wars',
          des:
              '"Star Wars: The Clone Wars" ist eine animierte Science-Fiction-Serie, die im Star Wars-Universum angesiedelt ist. Die Handlung findet zwischen den Episoden II und III der Star Wars-Filmreihe statt und beleuchtet die Klonkriege, die die Galaxie erschüttern. Die Serie folgt den Abenteuern von Jedi-Rittern wie Anakin Skywalker, Obi-Wan Kenobi und Ahsoka Tano sowie den Klonkriegern, während sie gegen die Separatisten und die dunkle Seite kämpfen. "Clone Wars" bietet epische Schlachten, fesselnde Charakterentwicklungen und eine tiefe Erweiterung der Star Wars-Geschichte.',
          image: "assets/series/StarWarsCloneWars.jpeg",
          platform: "Disney"),
    );
    neuheiten.add(
      NeuheitenModel(
          name: 'Supergirl',
          genre: 'DC',
          des:
              '"Supergirl" ist eine mitreißende Superhelden-Serie, die die Geschichte von Kara Zor-El erzählt, der Cousine von Superman. Nachdem sie jahrelang ihre Kräfte verborgen hat, entscheidet sich Kara, ihre Superkräfte einzusetzen, um die Menschen zu beschützen und als Supergirl die Welt zu retten. Die Serie verfolgt ihre Abenteuer und Herausforderungen, während sie gegen mächtige Bösewichte und persönliche Konflikte kämpft. "Supergirl" bietet spannende Action, emotionale Entwicklungen und eine inspirierende Botschaft über Mut, Selbstfindung und Heldentum.',
          image: "assets/series/Supergirl.webp",
          platform: "Disney"),
    );
    neuheiten.add(
      NeuheitenModel(
          name: 'Arrow',
          genre: 'DC',
          des:
              '"Arrow" ist eine actiongeladene Superhelden-Serie, die die Geschichte von Oliver Queen erzählt, einem reichen Playboy, der fünf Jahre lang auf einer einsamen Insel gestrandet war. Nach seiner Rückkehr nach Starling City beschließt er, als Kapuzenmann "Arrow" Verbrecher zu bekämpfen und seine Stadt zu retten. Die Serie verfolgt Olivers epische Reise als Superheld, seine persönlichen Konflikte und die Entwicklung eines Teams von Helden. "Arrow" bietet packende Action-Szenen, komplexe Charakterentwicklungen und eine mitreißende Handlung, die die Zuschauer von Anfang bis Ende fesselt.',
          image: "assets/series/Arrow.jpg",
          platform: "Netflix"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'Wanda Vision',
          genre: 'Marvel',
          des:
              '"WandaVision" ist eine faszinierende und innovative Superhelden-Serie im Marvel Cinematic Universe. Die Handlung dreht sich um Wanda Maximoff und Vision, die ein scheinbar idyllisches Vorstadtleben führen. Doch bald merken sie, dass nicht alles so ist, wie es scheint, und sie stecken in einer mysteriösen Realität fest. Die Serie kombiniert geschickt verschiedene TV-Äras mit Superhelden-Elementen und bietet eine einzigartige Mischung aus Drama, Komödie und Sci-Fi. "WandaVision" überrascht mit originellen Ideen, überragender Schauspielkunst und einer tiefgreifenden, emotionalen Geschichte.',
          image: "assets/series/WandaVision.webp",
          platform: "Netflix"),
    );

    neuheiten.add(
      NeuheitenModel(
          name: 'A Quiet Place',
          genre: 'Horror',
          des:
              '"A Quiet Place" ist ein spannender Horrorfilm, der sich in einer postapokalyptischen Welt abspielt. Die Erde wird von mysteriösen Kreaturen heimgesucht, die auf Geräusche reagieren und jeden Laut jagdähnlich verfolgen. Die Handlung folgt einer Familie, die ums Überleben kämpft und ihre Kommunikation auf das Nötigste beschränken muss. Der Film beeindruckt durch seine atmosphärische Inszenierung, starke Schauspielleistungen und den cleveren Einsatz von Stille und Spannung. "A Quiet Place" bietet ein intensives Erlebnis, das die Zuschauer von Anfang bis Ende gefesselt hält.',
          image: "assets/AQuietPlace.webp",
          platform: "Netflix"),
    );

    return neuheiten;
  }
}
