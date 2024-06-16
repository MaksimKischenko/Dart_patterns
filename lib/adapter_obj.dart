// Существующий класс с несовместимым интерфейсом
class OldSystem {
  void performOldOperation() {
    print("Выполняется старая операция");
  }
}

// Интерфейс, ожидаемый клиентом (новая система)
abstract class NewSystem {
  void performNewOperation();
}

// Адаптер, преобразующий OldSystem в NewSystem
class Adapter implements NewSystem {
  OldSystem oldSystem;

  Adapter(this.oldSystem);

  @override
  void performNewOperation() {
    // Вызываем старую операцию, чтобы выполнить новую
    oldSystem.performOldOperation();
  }
}





void main() {
  // Создаем объект OldSystem
  OldSystem oldSystem = OldSystem();

  // Создаем адаптер
  NewSystem adapter = Adapter(oldSystem);

  // Клиентский код ожидает объект типа NewSystem
  adapter.performNewOperation();
}