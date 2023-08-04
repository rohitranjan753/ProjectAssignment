class PlayListModel {
  Map<String, String> id;
  Map<String, String> title;
  Map<String, double> danceability;
  Map<String, double> energy;
  Map<String, double> key;
  Map<String, double> loudness;
  Map<String, double> mode;
  Map<String, double> acousticness;
  Map<String, double> instrumentalness;
  Map<String, double> liveness;
  Map<String, double> valence;
  Map<String, double> tempo;
  Map<String, double> durationMs;
  Map<String, double> timeSignature;
  Map<String, double> numBars;
  Map<String, double> numSections;
  Map<String, double> numSegments;
  Map<String, double> playListModelClass;

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
    required this.valence,
    required this.tempo,
    required this.durationMs,
    required this.timeSignature,
    required this.numBars,
    required this.numSections,
    required this.numSegments,
    required this.playListModelClass,
  });

}