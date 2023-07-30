class TagCloudModel {
  String name;

  TagCloudModel({
    required this.name,
  });

  static List<TagCloudModel> getTagcloud() {
    List<TagCloudModel> tagcloud = [];

    tagcloud.add(TagCloudModel(
      name: 'Marvel',
    ));

    tagcloud.add(TagCloudModel(
      name: 'DC',
    ));

    tagcloud.add(TagCloudModel(
      name: 'Action',
    ));
    tagcloud.add(TagCloudModel(
      name: 'Commedy',
    ));
    tagcloud.add(TagCloudModel(
      name: 'Thriller',
    ));
    tagcloud.add(TagCloudModel(
      name: 'Disney',
    ));
    tagcloud.add(TagCloudModel(
      name: 'Pixar',
    ));

    return tagcloud;
  }
}
