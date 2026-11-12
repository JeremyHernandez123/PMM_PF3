import 'models.dart';

class ArtWork {
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
    String primaryimageurl;
    List<Person>? people;
    List<SeeAlso> seeAlso;
    String? title;

    ArtWork({
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

    factory ArtWork.fromJson(String str) => ArtWork.fromMap(json.decode(str));

    // String toJson() => json.encode(toMap());

    factory ArtWork.fromMap(Map<String, dynamic> json) => ArtWork(
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

/*     Map<String, dynamic> toMap() => {
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
    }; */
}