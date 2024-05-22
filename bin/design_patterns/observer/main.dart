import 'screen_body.dart';
import 'screen_title.dart';
import 'user.dart';
import 'user_provider.dart';

void main() {
  const user = User(
    id: '123',
    name: 'Ahmed',
    email: 'ahmed@gmail.com',
    avg: 99.1,
  );
  final userProvider = UserProvider(user);
  final screenTitle = ScreenTitle(userProvider);
  final screenBody = ScreenBody(userProvider);
  print(screenTitle.title);
  print(screenBody.title);
  print(screenBody.aside);
  print(screenBody.bottom);
  print('-' * 50);
  userProvider.updateUserInfo(
    name: 'Mohammed',
    avg: 95.5,
    email: 'mohammed@hotmail.com',
  );
  print(screenTitle.title);
  print(screenBody.title);
  print(screenBody.aside);
  print(screenBody.bottom);
  print('-' * 50);
  userProvider.removeListener(screenTitle);
  userProvider.updateUserInfo(
    name: 'Ali',
    avg: 50.66,
    email: 'ali@ali.com',
  );
  print(screenTitle.title);
  print(screenBody.title);
  print(screenBody.aside);
  print(screenBody.bottom);
}
