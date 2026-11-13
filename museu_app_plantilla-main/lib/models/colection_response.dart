import 'models.dart';

class ColectionResponse {
    Info info;
    List<ArtWork> records;

    ColectionResponse({
        required this.info,
        required this.records,
    });

    factory ColectionResponse.fromJson(String str) => ColectionResponse.fromMap(json.decode(str));

    // String toJson() => json.encode(toMap());

    factory ColectionResponse.fromMap(Map<String, dynamic> json) => ColectionResponse(
        info: Info.fromMap(json["info"]),
        records: List<ArtWork>.from(json["records"].map((x) => ArtWork.fromMap(x))),
    );

  /*   Map<String, dynamic> toMap() => {
        "info": info.toMap(),
        "records": List<dynamic>.from(records.map((x) => x.toMap())),
    }; */
}
