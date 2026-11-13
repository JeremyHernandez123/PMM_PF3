import 'models.dart';

import 'dart:convert';

class ArtWork {
  final int id;
  final String? title;
  final String? dated;
  final String? classification;
  final String? culture;
  final String? description;
  final String? creditline;
  final String primaryimageurl;
  final List<String> artists;

  ArtWork({
    required this.id,
    this.title,
    this.dated,
    this.classification,
    this.culture,
    this.description,
    this.creditline,
    required this.primaryimageurl,
    this.artists = const [],
  });

  factory ArtWork.fromJson(String str) => ArtWork.fromMap(json.decode(str));

  factory ArtWork.fromMap(Map<String, dynamic> json) => ArtWork(
        id: json["id"],
        title: json["title"],
        dated: json["dated"],
        classification: json["classification"],
        culture: json["culture"],
        description: json["description"],
        creditline: json["creditline"],
        primaryimageurl: json["primaryimageurl"] ?? '',
        artists: (json["people"] as List?)
                ?.map((p) => (p["displayname"] ?? '') as String)
                .toList() ??
            [],
      );
}