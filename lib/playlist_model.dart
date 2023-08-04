class PlayListModel {
  final String id;
  final String title;
  final double danceability;
  final double energy;
  final int key;
  final double loudness;
  final int mode;
  final double acousticness;
  final double instrumentalness;
  final double liveness;

  PlayListModel({
    required this.id,
    required this.title,
    required this.danceability,
    required this.energy,
    required this.key,
    required this.loudness,
    required this.mode,
    required this.acousticness,
    required this.instrumentalness,
    required this.liveness,
  });

  factory PlayListModel.fromJson(Map<String, dynamic> json) {
    return PlayListModel(
      id: json['id'],
      title: json['title'],
      danceability: json['danceability'],
      energy: json['energy'],
      key: json['key'],
      loudness: json['loudness'],
      mode: json['mode'],
      acousticness: json['acousticness'],
      instrumentalness: json['instrumentalness'],
      liveness: json['liveness'],
    );
  }
}
