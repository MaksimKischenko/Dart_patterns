// Базовый класс кофейного напитка
abstract class Coffee {
  String getDescription();
  double getCost();
}

// Конкретный класс кофейного напитка
class Espresso extends Coffee {
  @override
  String getDescription() {
    return "Espresso";
  }

  @override
  double getCost() {
    return 2.0;
  }
}


// Абстрактный класс декоратора
abstract class CoffeeDecorator extends Coffee {
  Coffee _coffee;

  CoffeeDecorator(this._coffee);

  @override
  String getDescription() {
    return _coffee.getDescription();
  }

  @override
  double getCost() {
    return _coffee.getCost();
  }
}

// Конкретные декораторы
class MilkDecorator extends CoffeeDecorator {
  MilkDecorator(Coffee coffee) : super(coffee);

  @override
  String getDescription() {
    return "${super.getDescription()} + Milk";
  }

  @override
  double getCost() {
    return super.getCost() + 0.5;
  }
}

class SugarDecorator extends CoffeeDecorator {
  SugarDecorator(Coffee coffee) : super(coffee);

  @override
  String getDescription() {
    return "${super.getDescription()} + Sugar";
  }

  @override
  double getCost() {
    return super.getCost() + 0.2;
  }
}

void main() {
  // Создаем кофе с молоком и сахаром
  Coffee coffee = Espresso();
  coffee = MilkDecorator(coffee);
  coffee = SugarDecorator(coffee);

  print("Description: ${coffee.getDescription()}");
  print("Cost: ${coffee.getCost()}");
}
