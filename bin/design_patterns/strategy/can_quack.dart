abstract interface class CanQuack {
  void call();
}

class Quack implements CanQuack {
  const Quack();

  @override
  void call() {
    print('Quack');
  }
}

class NoQuack implements CanQuack {
  const NoQuack();

  @override
  void call() {
    print('No Quack');
  }
}
