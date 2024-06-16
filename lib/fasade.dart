// Подсистема двигателя
class Engine {
  void start() {
    print("Двигатель запущен");
  }

  void stop() {
    print("Двигатель остановлен");
  }
}

// Подсистема трансмиссии
class Transmission {
  void shiftGear(int gear) {
    print("Переключена передача на $gear");
  }
}

// Фасад для работы с автомобилем
class CarFacade {
  Engine engine = Engine();
  Transmission transmission = Transmission();

  void startCar() {
    engine.start();
    transmission.shiftGear(1);
  }

  void stopCar() {
    transmission.shiftGear(0);
    engine.stop();
  }
}

void main() {
  // Использование фасада для управления автомобилем
  final car = CarFacade();
  car.startCar(); // Запуск автомобиля
  car.stopCar();  // Остановка автомобиля
}