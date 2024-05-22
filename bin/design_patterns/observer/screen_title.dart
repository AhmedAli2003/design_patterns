import 'observable.dart';
import 'observer.dart';
import 'user.dart';

class ScreenTitle implements Observer<User> {
  late String title;

  ScreenTitle(Observable<User> observable) {
    observable.addListener(this);
    update(observable.getState());
  }

  @override
  void update(User user) {
    title = user.name;
  }
}
