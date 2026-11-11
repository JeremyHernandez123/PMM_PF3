import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies_app/models/models.dart';





class JokesProvider extends ChangeNotifier {

  final String _Url = 'api.harvardartmuseums.org'; 
  final String _apiKey = 'a1c2b9ce-e67f-40e5-8cbe-af49f7f76e01';

  List<Colection> onDisplayColection =  []; 
  
}