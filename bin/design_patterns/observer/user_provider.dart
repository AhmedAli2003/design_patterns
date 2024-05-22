import 'observable.dart';
import 'observer.dart';
import 'user.dart';

class UserProvider implements Observable<User> {
  final List<Observer<User>> _listeners = [];

  User _state;

  UserProvider(User state) : _state = state;

  User get state => _state;

  void updateUserInfo({
    String? name,
    String? email,
    double? avg,
  }) {
    _state = _state.copyWith(
      name: name,
      email: email,
      avg: avg,
    );
    notify();
  }

  @override
  void addListener(Observer<User> listener) {
    _listeners.add(listener);
  }

  @override
  void removeListener(Observer<User> listener) {
    _listeners.remove(listener);
  }

  @override
  void notify() {
    for (final listener in _listeners) {
      listener.update(_state);
    }
  }

  @override
  User getState() => _state;
}
