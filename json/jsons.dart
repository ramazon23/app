import 'dart:convert';

void main() {
  String json = '''[{
    "albumId": 1,
    "id": 1,
    "title": "accusamus beatae ad facilis cum similique qui sunt",
    "url": "https://via.placeholder.com/600/92c952",
    "thumbnailUrl": "https://via.placeholder.com/150/92c952"
  },
  {
    "albumId": 1,
    "id": 2,
    "title": "reprehenderit est deserunt velit ipsam",
    "url": "https://via.placeholder.com/600/771796",
    "thumbnailUrl": "https://via.placeholder.com/150/771796"
  },
  {
    "albumId": 1,
    "id": 3,
    "title": "officia porro iure quia iusto qui ipsa ut modi",
    "url": "https://via.placeholder.com/600/24f355",
    "thumbnailUrl": "https://via.placeholder.com/150/24f355"
  }]''';
  List<Object?> listdata = jsonDecode(json);
  List<Map<String, Object?>> reuslt = listdata
      .where(
        (e) => e is Map<String, Object?>,
      )
      .cast<Map<String, Object?>>()
      .toList();

  List<Photos> todosPhoto = List<Map<String, Object?>>.from(jsonDecode(json))
      .map((Photos.fromJson))
      .toList();
}

class Photos {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;
  const Photos(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});
  factory Photos.fromJson(Map<String, Object?> json) => Photos(
        albumId: json["albumId"] as int,
        id: json["id"] as int,
        title: json["title"] as String,
        url: json["url"] as String,
        thumbnailUrl: json["thumbnailUrl"] as String,
      );
}
