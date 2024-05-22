class UserValidator {
  const UserValidator._internal();

  static const _instance = UserValidator._internal();

  factory UserValidator() => _instance;

  bool validate(dynamic map) {
    return map is Map && map['id'] is int && map['name'] is String;
  }
}
