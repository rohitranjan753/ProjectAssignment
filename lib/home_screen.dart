import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projectassignment/playlist_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PlayListModel> _songList = [];

  Future<void> _loadData() async {
    try {
      // Load the JSON data from the asset file
      String data = await rootBundle.loadString('assets/playlist.json');
      Map<String, dynamic> jsonData = jsonDecode(data); // Parse as a Map

      List<dynamic> playlistData = jsonData.values.toList();
      // Now you can parse the data into a PlayListModel object directly
      setState(() {
        _songList = playlistData.map((json) => PlayListModel.fromJson(json)).toList();
      });
    } catch (e) {
      print('Error loading data: $e');
    }
  }



  @override
  void initState() {
    super.initState();
    _loadData();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Playlist'),
      ),
      body: ListView.builder(
        itemCount: _songList.length,
        itemBuilder: (context, index) {
          PlayListModel model = _songList[index];
          return ListTile(
            title: Text(model.title['en'] ?? 'Unknown'),
            subtitle: Text('Danceability: ${model.danceability['value']}'),
            // Add more widgets to display other properties
          );
        },
      ),
    );
  }

}
