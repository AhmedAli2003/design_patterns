abstract interface class CanEat {
  void call();
}

class EatGrass implements CanEat {
  const EatGrass();

  @override
  void call() {
    print('Eat Grass');
  }
}

class EatMeat implements CanEat {
  const EatMeat();

  @override
  void call() {
    print('Eat Meat');
  }
}

class EatGrassAndMeat implements CanEat {
  const EatGrassAndMeat();

  @override
  void call() {
    print('Eat Grass And Meat');
  }
}

class NoEat implements CanEat {
  const NoEat();

  @override
  void call() {
    print('No Eat');
  }
}
