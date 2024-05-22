import 'observable.dart';
import 'observer.dart';
import 'user.dart';

class ScreenBody implements Observer<User> {
  late String title;
  late String aside;
  late String bottom;

  ScreenBody(Observable<User> observable) {
    observable.addListener(this);
    update(observable.getState());
  }

  @override
  void update(User state) {
    title = state.email;
    aside = state.id;
    bottom = state.avg.toString();
  }
}
