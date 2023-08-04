
class PlayListModel {
  late Map<String, String> id;
  late Map<String, String> title;
  late Map<String, double> danceability;
  late Map<String, double> energy;
  late Map<String, double> key;
  late Map<String, double> loudness;
  late Map<String, double> mode;
  late Map<String, double> acousticness;
  late Map<String, double> instrumentalness;
  late Map<String, double> liveness;
  late Map<String, double> valence;
  late Map<String, double> tempo;
  late Map<String, double> durationMs;
  late Map<String, double> timeSignature;
  late Map<String, double> numBars;
  late Map<String, double> numSections;
  late Map<String, double> numSegments;
  late Map<String, double> playListModelClass;

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

  PlayListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? {};
    title = json['title'] ?? {};
    danceability = json['danceability'] ?? {};
    energy = json['energy'] ?? {};
    key = json['key'] ?? {};
    loudness = json['loudness'] ?? {};
    mode = json['mode'] ?? {};
    acousticness = json['acousticness'] ?? {};
    instrumentalness = json['instrumentalness'] ?? {};
    liveness = json['liveness'] ?? {};
    valence = json['valence'] ?? {};
    tempo = json['tempo'] ?? {};
    durationMs = json['durationMs'] ?? {};
    timeSignature = json['timeSignature'] ?? {};
    numBars = json['numBars'] ?? {};
    numSections = json['numSections'] ?? {};
    numSegments = json['numSegments'] ?? {};
    playListModelClass = json['playListModelClass'] ?? {};
  }



}
