import 'dart:convert';

class MapaNombre {
    MapaNombre({
       required this.results,
    });

    List<Result> results;

    factory MapaNombre.fromJson(String str) => MapaNombre.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory MapaNombre.fromMap(Map<String, dynamic> json) => MapaNombre(
        results: List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
    };
}

class Result {
    Result({
       required this.name,
       required this.url,
    });

    String name;
    String url;

    factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Result.fromMap(Map<String, dynamic> json) => Result(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "url": url,
    };
}