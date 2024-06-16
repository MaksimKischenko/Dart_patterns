// Пример интерфейса
abstract class Vehicle {
  void start();
  void stop();
}

// Классы, реализующие интерфейс Vehicle
class Car implements Vehicle {
  @override
  void start() {
    print('Завести машину');
  }

  @override
  void stop() {
    print('Остановить машину');
  }
}

class Motorcycle implements Vehicle {
  @override
  void start() {
    print('Завести мотоцикл');
  }

  @override
  void stop() {
    print('Остановить мотоцикл');
  }
}

void main() {
  final car = Car();
  final motorcycle = Motorcycle();

  // Используем интерфейс Vehicle для управления разными типами транспортных средств
  car.start();
  car.stop();

  motorcycle.start();
  motorcycle.stop();
}

/*
Вывод:

Завести машину
Остановить машину
Завести мотоцикл
Остановить мотоцикл
*/