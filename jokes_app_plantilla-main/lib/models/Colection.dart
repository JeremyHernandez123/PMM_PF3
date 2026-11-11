import 'models.dart';

class Colection {
    Info info;
    List<Record> records;

    Colection({
        required this.info,
        required this.records,
    });

    factory Colection.fromJson(String str) => Colection.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Colection.fromMap(Map<String, dynamic> json) => Colection(
        info: Info.fromMap(json["info"]),
        records: List<Record>.from(json["records"].map((x) => Record.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "info": info.toMap(),
        "records": List<dynamic>.from(records.map((x) => x.toMap())),
    };
}

class Info {
    int totalrecordsperquery;
    int totalrecords;
    int pages;
    int page;
    String next;
    String responsetime;

    Info({
        required this.totalrecordsperquery,
        required this.totalrecords,
        required this.pages,
        required this.page,
        required this.next,
        required this.responsetime,
    });

    factory Info.fromJson(String str) => Info.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Info.fromMap(Map<String, dynamic> json) => Info(
        totalrecordsperquery: json["totalrecordsperquery"],
        totalrecords: json["totalrecords"],
        pages: json["pages"],
        page: json["page"],
        next: json["next"],
        responsetime: json["responsetime"],
    );

    Map<String, dynamic> toMap() => {
        "totalrecordsperquery": totalrecordsperquery,
        "totalrecords": totalrecords,
        "pages": pages,
        "page": page,
        "next": next,
        "responsetime": responsetime,
    };
}

class Record {
    int id;
    int objectid;
    String objectnumber;
    String? accessiondate;
    int? accessionyear;
    String? dated;
    int datebegin;
    int dateend;
    String classification;
    int classificationid;
    String? medium;
    String? technique;
    int? techniqueid;
    String? period;
    int? periodid;
    String? century;
    String? culture;
    dynamic style;
    String? signed;
    dynamic state;
    dynamic edition;
    String? standardreferencenumber;
    String? dimensions;
    String? copyright;
    String creditline;
    String department;
    String? division;
    String contact;
    String? description;
    String? provenance;
    dynamic commentary;
    dynamic labeltext;
    int imagecount;
    int mediacount;
    int colorcount;
    int markscount;
    int peoplecount;
    int titlescount;
    int publicationcount;
    int exhibitioncount;
    int contextualtextcount;
    int groupcount;
    int relatedcount;
    int totalpageviews;
    int totaluniquepageviews;
    DateTime dateoffirstpageview;
    DateTime dateoflastpageview;
    int verificationlevel;
    String verificationleveldescription;
    int imagepermissionlevel;
    int lendingpermissionlevel;
    int accesslevel;
    String accessionmethod;
    int rank;
    String url;
    DateTime createdate;
    DateTime lastupdate;
    List<Color> colors;
    List<Image> images;
    String? primaryimageurl;
    List<Person>? people;
    List<SeeAlso> seeAlso;
    String? title;

    Record({
        required this.id,
        required this.objectid,
        required this.objectnumber,
        required this.accessiondate,
        required this.accessionyear,
        required this.dated,
        required this.datebegin,
        required this.dateend,
        required this.classification,
        required this.classificationid,
        required this.medium,
        required this.technique,
        required this.techniqueid,
        required this.period,
        required this.periodid,
        required this.century,
        required this.culture,
        required this.style,
        required this.signed,
        required this.state,
        required this.edition,
        required this.standardreferencenumber,
        required this.dimensions,
        required this.copyright,
        required this.creditline,
        required this.department,
        required this.division,
        required this.contact,
        required this.description,
        required this.provenance,
        required this.commentary,
        required this.labeltext,
        required this.imagecount,
        required this.mediacount,
        required this.colorcount,
        required this.markscount,
        required this.peoplecount,
        required this.titlescount,
        required this.publicationcount,
        required this.exhibitioncount,
        required this.contextualtextcount,
        required this.groupcount,
        required this.relatedcount,
        required this.totalpageviews,
        required this.totaluniquepageviews,
        required this.dateoffirstpageview,
        required this.dateoflastpageview,
        required this.verificationlevel,
        required this.verificationleveldescription,
        required this.imagepermissionlevel,
        required this.lendingpermissionlevel,
        required this.accesslevel,
        required this.accessionmethod,
        required this.rank,
        required this.url,
        required this.createdate,
        required this.lastupdate,
        required this.colors,
        required this.images,
        required this.primaryimageurl,
        this.people,
        required this.seeAlso,
        this.title,
    });

    factory Record.fromJson(String str) => Record.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Record.fromMap(Map<String, dynamic> json) => Record(
        id: json["id"],
        objectid: json["objectid"],
        objectnumber: json["objectnumber"],
        accessiondate: json["accessiondate"],
        accessionyear: json["accessionyear"],
        dated: json["dated"],
        datebegin: json["datebegin"],
        dateend: json["dateend"],
        classification: json["classification"],
        classificationid: json["classificationid"],
        medium: json["medium"],
        technique: json["technique"],
        techniqueid: json["techniqueid"],
        period: json["period"],
        periodid: json["periodid"],
        century: json["century"],
        culture: json["culture"],
        style: json["style"],
        signed: json["signed"],
        state: json["state"],
        edition: json["edition"],
        standardreferencenumber: json["standardreferencenumber"],
        dimensions: json["dimensions"],
        copyright: json["copyright"],
        creditline: json["creditline"],
        department: json["department"],
        division: json["division"],
        contact: json["contact"],
        description: json["description"],
        provenance: json["provenance"],
        commentary: json["commentary"],
        labeltext: json["labeltext"],
        imagecount: json["imagecount"],
        mediacount: json["mediacount"],
        colorcount: json["colorcount"],
        markscount: json["markscount"],
        peoplecount: json["peoplecount"],
        titlescount: json["titlescount"],
        publicationcount: json["publicationcount"],
        exhibitioncount: json["exhibitioncount"],
        contextualtextcount: json["contextualtextcount"],
        groupcount: json["groupcount"],
        relatedcount: json["relatedcount"],
        totalpageviews: json["totalpageviews"],
        totaluniquepageviews: json["totaluniquepageviews"],
        dateoffirstpageview: DateTime.parse(json["dateoffirstpageview"]),
        dateoflastpageview: DateTime.parse(json["dateoflastpageview"]),
        verificationlevel: json["verificationlevel"],
        verificationleveldescription: json["verificationleveldescription"],
        imagepermissionlevel: json["imagepermissionlevel"],
        lendingpermissionlevel: json["lendingpermissionlevel"],
        accesslevel: json["accesslevel"],
        accessionmethod: json["accessionmethod"],
        rank: json["rank"],
        url: json["url"],
        createdate: DateTime.parse(json["createdate"]),
        lastupdate: DateTime.parse(json["lastupdate"]),
        colors: List<Color>.from(json["colors"].map((x) => Color.fromMap(x))),
        images: List<Image>.from(json["images"].map((x) => Image.fromMap(x))),
        primaryimageurl: json["primaryimageurl"],
        people: json["people"] == null ? [] : List<Person>.from(json["people"]!.map((x) => Person.fromMap(x))),
        seeAlso: List<SeeAlso>.from(json["seeAlso"].map((x) => SeeAlso.fromMap(x))),
        title: json["title"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "objectid": objectid,
        "objectnumber": objectnumber,
        "accessiondate": accessiondate,
        "accessionyear": accessionyear,
        "dated": dated,
        "datebegin": datebegin,
        "dateend": dateend,
        "classification": classification,
        "classificationid": classificationid,
        "medium": medium,
        "technique": technique,
        "techniqueid": techniqueid,
        "period": period,
        "periodid": periodid,
        "century": century,
        "culture": culture,
        "style": style,
        "signed": signed,
        "state": state,
        "edition": edition,
        "standardreferencenumber": standardreferencenumber,
        "dimensions": dimensions,
        "copyright": copyright,
        "creditline": creditline,
        "department": department,
        "division": division,
        "contact": contact,
        "description": description,
        "provenance": provenance,
        "commentary": commentary,
        "labeltext": labeltext,
        "imagecount": imagecount,
        "mediacount": mediacount,
        "colorcount": colorcount,
        "markscount": markscount,
        "peoplecount": peoplecount,
        "titlescount": titlescount,
        "publicationcount": publicationcount,
        "exhibitioncount": exhibitioncount,
        "contextualtextcount": contextualtextcount,
        "groupcount": groupcount,
        "relatedcount": relatedcount,
        "totalpageviews": totalpageviews,
        "totaluniquepageviews": totaluniquepageviews,
        "dateoffirstpageview": "${dateoffirstpageview.year.toString().padLeft(4, '0')}-${dateoffirstpageview.month.toString().padLeft(2, '0')}-${dateoffirstpageview.day.toString().padLeft(2, '0')}",
        "dateoflastpageview": "${dateoflastpageview.year.toString().padLeft(4, '0')}-${dateoflastpageview.month.toString().padLeft(2, '0')}-${dateoflastpageview.day.toString().padLeft(2, '0')}",
        "verificationlevel": verificationlevel,
        "verificationleveldescription": verificationleveldescription,
        "imagepermissionlevel": imagepermissionlevel,
        "lendingpermissionlevel": lendingpermissionlevel,
        "accesslevel": accesslevel,
        "accessionmethod": accessionmethod,
        "rank": rank,
        "url": url,
        "createdate": createdate.toIso8601String(),
        "lastupdate": lastupdate.toIso8601String(),
        "colors": List<dynamic>.from(colors.map((x) => x.toMap())),
        "images": List<dynamic>.from(images.map((x) => x.toMap())),
        "primaryimageurl": primaryimageurl,
        "people": people == null ? [] : List<dynamic>.from(people!.map((x) => x.toMap())),
        "seeAlso": List<dynamic>.from(seeAlso.map((x) => x.toMap())),
        "title": title,
    };
}

class Color {
    String color;
    String spectrum;
    Hue hue;
    double percent;
    String css3;

    Color({
        required this.color,
        required this.spectrum,
        required this.hue,
        required this.percent,
        required this.css3,
    });

    factory Color.fromJson(String str) => Color.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Color.fromMap(Map<String, dynamic> json) => Color(
        color: json["color"],
        spectrum: json["spectrum"],
        hue: hueValues.map[json["hue"]]!,
        percent: json["percent"]?.toDouble(),
        css3: json["css3"],
    );

    Map<String, dynamic> toMap() => {
        "color": color,
        "spectrum": spectrum,
        "hue": hueValues.reverse[hue],
        "percent": percent,
        "css3": css3,
    };
}

enum Hue {
    BLACK,
    BLUE,
    BROWN,
    GREEN,
    GREY,
    ORANGE,
    RED,
    WHITE,
    YELLOW
}

final hueValues = EnumValues({
    "Black": Hue.BLACK,
    "Blue": Hue.BLUE,
    "Brown": Hue.BROWN,
    "Green": Hue.GREEN,
    "Grey": Hue.GREY,
    "Orange": Hue.ORANGE,
    "Red": Hue.RED,
    "White": Hue.WHITE,
    "Yellow": Hue.YELLOW
});

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

    String toJson() => json.encode(toMap());

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

    Map<String, dynamic> toMap() => {
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
    };
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

class Person {
    String role;
    String? birthplace;
    String gender;
    String? displaydate;
    String? prefix;
    String culture;
    String displayname;
    String alphasort;
    String name;
    int personid;
    String? deathplace;
    int displayorder;

    Person({
        required this.role,
        required this.birthplace,
        required this.gender,
        required this.displaydate,
        required this.prefix,
        required this.culture,
        required this.displayname,
        required this.alphasort,
        required this.name,
        required this.personid,
        required this.deathplace,
        required this.displayorder,
    });

    factory Person.fromJson(String str) => Person.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Person.fromMap(Map<String, dynamic> json) => Person(
        role: json["role"],
        birthplace: json["birthplace"],
        gender: json["gender"],
        displaydate: json["displaydate"],
        prefix: json["prefix"],
        culture: json["culture"],
        displayname: json["displayname"],
        alphasort: json["alphasort"],
        name: json["name"],
        personid: json["personid"],
        deathplace: json["deathplace"],
        displayorder: json["displayorder"],
    );

    Map<String, dynamic> toMap() => {
        "role": role,
        "birthplace": birthplace,
        "gender": gender,
        "displaydate": displaydate,
        "prefix": prefix,
        "culture": culture,
        "displayname": displayname,
        "alphasort": alphasort,
        "name": name,
        "personid": personid,
        "deathplace": deathplace,
        "displayorder": displayorder,
    };
}

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

    String toJson() => json.encode(toMap());

    factory SeeAlso.fromMap(Map<String, dynamic> json) => SeeAlso(
        id: json["id"],
        type: typeValues.map[json["type"]]!,
        format: seeAlsoFormatValues.map[json["format"]]!,
        profile: json["profile"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "type": typeValues.reverse[type],
        "format": seeAlsoFormatValues.reverse[format],
        "profile": profile,
    };
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
