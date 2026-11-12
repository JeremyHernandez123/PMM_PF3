import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies_app/models/models.dart';





class ArtworksProvider extends ChangeNotifier {

  final String _url = 'api.harvardartmuseums.org'; 
  final String _apiKey = 'a1c2b9ce-e67f-40e5-8cbe-af49f7f76e01';
  final String _page = "1"; 

  List<ArtWork> onDisplayArtwork = []; 
  

  ArtworksProvider(){
    this.getOnDisplayArtWork(); 
  }
  
  getOnDisplayArtWork() async{
      final url = Uri.https(
      _url,
      '/object',
      {
        'apikey': _apiKey,
        'page': _page,
        'size': '20',
        'hasimage': '1',
      },
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final collectionResponse = ColectionResponse.fromJson(response.body);

      onDisplayArtwork = collectionResponse.records;

      notifyListeners();
    }
  }
}