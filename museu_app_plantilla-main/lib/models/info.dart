import 'models.dart';

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