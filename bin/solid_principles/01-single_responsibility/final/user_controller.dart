import 'dart:convert';
import './user.dart';
import './user_validator.dart';

class UserController {
  User createUser(String json) {
    final map = jsonDecode(json);
    final userValidator = UserValidator();
    if (userValidator.validate(map)) {
      return User.fromMap(map);
    }
    throw Exception("Cannot create user");
  }
}
