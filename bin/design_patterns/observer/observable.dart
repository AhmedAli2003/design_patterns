import 'observer.dart';

abstract interface class Observable<T> {
  void addListener(Observer<T> listener);

  void removeListener(Observer<T> listener);

  void notify();

  T getState();
}
