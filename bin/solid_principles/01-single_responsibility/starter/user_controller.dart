import 'dart:convert';
import './user.dart';

class UserController {
  User createUser(String json) {
    final map = jsonDecode(json);
    if (validate(map)) {
      final id = map['id'];
      final name = map['name'];
      final user = User(id, name);
      return user;
    }
    throw Exception("Cannot create user");
  }

  bool validate(dynamic map) {
    return map is Map && map['id'] is int && map['name'] is String;
  }
}
