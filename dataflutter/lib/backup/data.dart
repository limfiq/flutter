import 'dart:convert';

List<Data> DataFromJson(String str) =>
    List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

String DataToJson(List<Data> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
  Data({
    required this.id,
    required this.post_header,
    required this.post_body,
  });

  String id;
  String post_header;
  String post_body;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        post_header: json["post_header"],
        post_body: json["post_body"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "post_header": post_header,
        "post_body": post_body,
      };
}
