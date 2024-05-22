import 'can_display.dart';
import 'can_drink.dart';
import 'can_eat.dart';
import 'can_fly.dart';
import 'can_quack.dart';
import 'can_swim.dart';

abstract class Duck {
  CanDisplay displayBehavior;
  CanDrink drinkBehavior;
  CanEat eatBehavior;
  CanFly flyBehavior;
  CanQuack quackBehavior;
  CanSwim swimBehavior;

  Duck({
    required this.displayBehavior,
    required this.drinkBehavior,
    required this.eatBehavior,
    required this.flyBehavior,
    required this.quackBehavior,
    required this.swimBehavior,
  });

  void display() {
    displayBehavior();
  }

  void drink() {
    drinkBehavior();
  }

  void eat() {
    eatBehavior();
  }

  void fly() {
    flyBehavior();
  }

  void quack() {
    quackBehavior();
  }

  void swim() {
    swimBehavior();
  }
}

class MountainDuck extends Duck {
  MountainDuck({
    super.displayBehavior = const DisplayGraphically(),
    super.drinkBehavior = const DrinkWater(),
    super.eatBehavior = const EatGrassAndMeat(),
    super.flyBehavior = const FlyFast(),
    super.quackBehavior = const Quack(),
    super.swimBehavior = const NoSwim(),
  });
}

class ToyDuck extends Duck {
  ToyDuck({
    super.displayBehavior = const DisplayTextually(),
    super.drinkBehavior = const NoDrink(),
    super.eatBehavior = const NoEat(),
    super.flyBehavior = const NoFly(),
    super.quackBehavior = const Quack(),
    super.swimBehavior = const NormalSwim(),
  });
}

class CloudDuck extends Duck {
  CloudDuck({
    super.displayBehavior = const DisplayGraphically(),
    super.drinkBehavior = const DrinkWater(),
    super.eatBehavior = const EatGrass(),
    super.flyBehavior = const FlyFast(),
    super.quackBehavior = const Quack(),
    super.swimBehavior = const NormalSwim(),
  });
}
