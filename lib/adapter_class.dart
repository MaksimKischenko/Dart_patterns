// Абстрактный класс ожидаемого интерфейса
mixin class Target {
  void request(){}
}

// Класс, который нужно адаптировать
class Adaptee {
  void specificRequest() {
    print("Существующий метод объекта Adaptee");
  }
}

// Адаптер классов с использованием миксина
class Adapter extends Adaptee with Target {
 @override
  void request() {
    print("Вызывается адаптированный метод");
    specificRequest();
  }
}