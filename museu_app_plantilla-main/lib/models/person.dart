import 'models.dart';

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

    // String toJson() => json.encode(toMap());

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

 /*    Map<String, dynamic> toMap() => {
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
    }; */
}