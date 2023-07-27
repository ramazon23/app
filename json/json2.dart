import 'dart:convert';

void main() {
  String json = '''[
  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  },
  {
    "id": 2,
    "name": "Ervin Howell",
    "username": "Antonette",
    "email": "Shanna@melissa.tv",
    "address": {
      "street": "Victor Plains",
      "suite": "Suite 879",
      "city": "Wisokyburgh",
      "zipcode": "90566-7771",
      "geo": {
        "lat": "-43.9509",
        "lng": "-34.4618"
      }
    },
    "phone": "010-692-6593 x09125",
    "website": "anastasia.net",
    "company": {
      "name": "Deckow-Crist",
      "catchPhrase": "Proactive didactic contingency",
      "bs": "synergize scalable supply-chains"
    }
  }]''';
  List<User> user = List<Map<String, Object?>>.from(jsonDecode(json))
      .map(User.fromJson)
      .toList();
  print(user[0].address.geo.lat);
}

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });
  factory User.fromJson(Map<String, Object?> json) => User(
        id: json["id"] as int,
        name: json["name"] as String,
        username: json["username"] as String,
        email: json["email"] as String,
        address: Address.fromJson(json["address"] as Map<String, Object?>),
        phone: json["phone"] as String,
        website: json["website"] as String,
        company: Company.fromJson(json["company"] as Map<String, Object?>),
      );
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });
  factory Address.fromJson(Map<String, Object?> json) => Address(
        street: json["street"] as String,
        suite: json["suite"] as String,
        city: json["city"] as String,
        zipcode: json["zipcode"] as String,
        geo: Geo.fromJson(json["geo"] as Map<String, Object?>),
      );
}

class Geo {
  final String lat;
  final String lng;
  const Geo({
    required this.lat,
    required this.lng,
  });
  factory Geo.fromJson(Map<String, Object?> json) => Geo(
        lat: json["lat"] as String,
        lng: json["lng"] as String,
      );
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });
  factory Company.fromJson(Map<String, Object?> json) => Company(
        name: json["name"] as String,
        catchPhrase: json["catchPhrase"] as String,
        bs: json["bs"] as String,
      );
}
