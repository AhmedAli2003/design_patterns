import 'can_eat.dart';
import 'duck.dart';

void main() {
  final duck = MountainDuck();
  duck.display();
  duck.eat();
  duck.eatBehavior = const NoEat();
  duck.eat();
}
