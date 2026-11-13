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

class Image {
    DateTime date;
    Copyright? copyright;
    int imageid;
    ImageFormat format;
    dynamic description;
    String? technique;
    String renditionnumber;
    int displayorder;
    String baseimageurl;
    dynamic alttext;
    int width;
    String? publiccaption;
    int height;

    Image({
        required this.date,
        required this.copyright,
        required this.imageid,
        required this.format,
        required this.description,
        required this.technique,
        required this.renditionnumber,
        required this.displayorder,
        required this.baseimageurl,
        required this.alttext,
        required this.width,
        required this.publiccaption,
        required this.height,
    });

    factory Image.fromJson(String str) => Image.fromMap(json.decode(str));

    // String toJson() => json.encode(toMap());

    factory Image.fromMap(Map<String, dynamic> json) => Image(
        date: DateTime.parse(json["date"]),
        copyright: copyrightValues.map[json["copyright"]],
        imageid: json["imageid"],
        format: imageFormatValues.map[json["format"]]!,
        description: json["description"],
        technique: json["technique"],
        renditionnumber: json["renditionnumber"],
        displayorder: json["displayorder"],
        baseimageurl: json["baseimageurl"],
        alttext: json["alttext"],
        width: json["width"],
        publiccaption: json["publiccaption"],
        height: json["height"],
    );

   /*  Map<String, dynamic> toMap() => {
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "copyright": copyrightValues.reverse[copyright],
        "imageid": imageid,
        "format": imageFormatValues.reverse[format],
        "description": description,
        "technique": technique,
        "renditionnumber": renditionnumber,
        "displayorder": displayorder,
        "baseimageurl": baseimageurl,
        "alttext": alttext,
        "width": width,
        "publiccaption": publiccaption,
        "height": height,
    }; */
}

enum Copyright {
    PRESIDENT_AND_FELLOWS_OF_HARVARD_COLLEGE
}

final copyrightValues = EnumValues({
    "President and Fellows of Harvard College": Copyright.PRESIDENT_AND_FELLOWS_OF_HARVARD_COLLEGE
});

enum ImageFormat {
    IMAGE_JPEG
}

final imageFormatValues = EnumValues({
    "image/jpeg": ImageFormat.IMAGE_JPEG
});

class SeeAlso {
    String id;
    Type type;
    SeeAlsoFormat format;
    String profile;

    SeeAlso({
        required this.id,
        required this.type,
        required this.format,
        required this.profile,
    });

    factory SeeAlso.fromJson(String str) => SeeAlso.fromMap(json.decode(str));

    // String toJson() => json.encode(toMap());

    factory SeeAlso.fromMap(Map<String, dynamic> json) => SeeAlso(
        id: json["id"],
        type: typeValues.map[json["type"]]!,
        format: seeAlsoFormatValues.map[json["format"]]!,
        profile: json["profile"],
    );

    // Map<String, dynamic> toMap() => {
    //     "id": id,
    //     "type": typeValues.reverse[type],
    //     "format": seeAlsoFormatValues.reverse[format],
    //     "profile": profile,
    // };
}

enum SeeAlsoFormat {
    APPLICATION_JSON
}

final seeAlsoFormatValues = EnumValues({
    "application/json": SeeAlsoFormat.APPLICATION_JSON
});

enum Type {
    IIIF_MANIFEST
}

final typeValues = EnumValues({
    "IIIF Manifest": Type.IIIF_MANIFEST
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
