abstract interface class CanFly {
  void call();
}

class FlyNormal implements CanFly {
  const FlyNormal();

  @override
  void call() {
    print('Fly Normal');
  }
}

class FlyFast implements CanFly {
  const FlyFast();

  @override
  void call() {
    print('Fly Fast');
  }
}

class FlySlow implements CanFly {
  const FlySlow();

  @override
  void call() {
    print('Fly Slow');
  }
}

class NoFly implements CanFly {
  const NoFly();

  @override
  void call() {
    print('No Fly');
  }
}
