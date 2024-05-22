abstract interface class CanSwim {
  void call();
}

class NormalSwim implements CanSwim {
  const NormalSwim();

  @override
  void call() {
    print('Normal Swim');
  }
}

class NoSwim implements CanSwim {
  const NoSwim();

  @override
  void call() {
    print('No Swim');
  }
}
