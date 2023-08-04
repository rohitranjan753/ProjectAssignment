import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:projectassignment/dummy_model.dart';

class DummyScreen extends StatefulWidget {
  const DummyScreen({Key? key}) : super(key: key);

  @override
  State<DummyScreen> createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {
  Future<List<PlayListModel>> fetchPlaylistData() async {
    // Load the JSON data from the assets
    String jsonString = await rootBundle.loadString('assets/dummy.json');

    // Parse the JSON data
    final jsonData = json.decode(jsonString);
    final songsData = jsonData['songs'];

    // Create a list of PlayListModel objects
    List<PlayListModel> playlist = songsData.map<PlayListModel>((songData) {
      return PlayListModel(
        id: songData['id'],
        title: songData['title'],
        danceability: songData['danceability'],
        energy: songData['energy'],
        key: songData['key'],
        loudness: songData['loudness'],
        mode: songData['mode'],
        acousticness: songData['acousticness'],
        instrumentalness: songData['instrumentalness'],
        liveness: songData['liveness'],
        valence: songData['valence'],
        tempo: songData['tempo'],
        durationMs: songData['durationMs'],
        timeSignature: songData['timeSignature'],
        numBars: songData['numBars'],
        numSections: songData['numSections'],
        numSegments: songData['numSegments'],
        playListModelClass: songData['playListModelClass'],
      );
    }).toList();

    return playlist;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Playlist')),
      body: Center(
        child: FutureBuilder<List<PlayListModel>>(
          future: fetchPlaylistData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<PlayListModel> playlist = snapshot.data!;

              return ListView.builder(
                itemCount: playlist.length,
                itemBuilder: (context, index) {
                  PlayListModel song = playlist[index];

                  return ListTile(
                    title: Text('Title:${song.id}'),
                    subtitle: Text('Danceability: ${song.danceability}, Energy: ${song.energy}'),
                    // Add more information as needed
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('Error loading data');
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
