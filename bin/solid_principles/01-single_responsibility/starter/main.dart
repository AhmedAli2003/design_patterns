import './user_controller.dart';

void main() {
  final json = '''{
    "id": 1,
    "name": "Ahmed"
  }''';
  final userController = UserController();
  final user = userController.createUser(json);
  print(user.id);
  print(user.name);
}
