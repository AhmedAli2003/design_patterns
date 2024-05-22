abstract interface class CanDrink {
  void call();
}

class DrinkWater implements CanDrink {
  const DrinkWater();

  @override
  void call() {
    print('Drink Water');
  }
}

class NoDrink implements CanDrink {
  const NoDrink();

  @override
  void call() {
    print('No Drink');
  }
}
