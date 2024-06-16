// Пример композиции (предпочтительный подход)
class Engine {
  void start() {
    print('Двигатель запущен');
  }
}

class Car {
  final Engine engine;

  Car(this.engine);

  void drive() {
    engine.start();
    print('Машина поехала');
  }
}

class Boat {
  final Engine engine;

  Boat(this.engine);

  void sail() {
    engine.start();
    print('Лодка пошла в плавание');
  }
}

void main() {
  final carEngine = Engine();
  final car = Car(carEngine);
  car.drive();

  final boatEngine = Engine();
  final boat = Boat(boatEngine);
  boat.sail();
}

/*
Вывод:

Двигатель запущен
Машина поехала
Двигатель запущен
Лодка пошла в плавание
*/