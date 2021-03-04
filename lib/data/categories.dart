import 'package:meta/meta.dart';

class Categories {
  int id; // id will be gotten from db
  final String name;

  Categories({@required this.name});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  static Categories fromMap(Map<String, dynamic> map) {
    return Categories(
      name: map['name'],
    );
  }
}
