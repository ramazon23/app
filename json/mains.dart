import 'dart:convert';

void main() {
  String json = '''[
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  },
  {
    "userId": 1,
    "id": 2,
    "title": "quis ut nam facilis et officia qui",
    "completed": false
  },
  {
    "userId": 1,
    "id": 3,
    "title": "fugiat veniam minus",
    "completed": false
  }
  ]''';
  List<Object?> listdata = jsonDecode(json);
  List<Map<String, Object?>> reuslt = listdata
      .where(
        (e) => e is Map<String, Object?>,
      )
      .cast<Map<String, Object?>>()
      .toList();

  List<Todomode> todos = reuslt.map<Todomode>(
    (e) {
      return Todomode(
        id: e["id"] as int,
        userId: e["userId"] as int,
        title: e["title"] as String,
        completed: e["completed"] as bool,
      );
    },
  ).toList();
  print(todos);
}

class Todomode {
  int id;
  int userId;
  String title;
  bool completed;
  Todomode({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });
}
