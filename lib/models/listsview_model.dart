class ListModel {
  String name;
  String anzahlfilme;
  String anzahlserien;

  ListModel({
    required this.name,
    required this.anzahlfilme,
    required this.anzahlserien,
  });

  static List<ListModel> getlists() {
    List<ListModel> lists = [];

    lists.add(ListModel(
        name: 'Must Watch',
        anzahlfilme: '12',
        anzahlserien: '32'));
    
     lists.add(ListModel(
        name: 'Für den schnellen Lacher',
        anzahlfilme: '2',
        anzahlserien: '23'));

     lists.add(ListModel(
        name: 'Lovestories',
        anzahlfilme: '5',
        anzahlserien: '12'));

    return lists;
  }
}
