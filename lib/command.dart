// Интерфейс Команды
abstract class Command {
  void execute();
  void undo();
}

// Конкретная Команда
class LightOnCommand implements Command {
  Light light;

  LightOnCommand(this.light);

  @override
  void execute() {
    light.turnOn();
  }

  @override
  void undo() {
    light.turnOff();
  }
}

// Получатель (Receiver) - объект, над которым выполняется операция
class Light {
  void turnOn() {
    print("Свет включен");
  }

  void turnOff() {
    print("Свет выключен");
  }
}

// Инициатор (Invoker) - объект, инициирующий выполнение команд
class RemoteControl {
  Command? _command;

  void setCommand(Command command) {
    _command = command;
  }

  void pressButton() {
    _command?.execute();
  }
}

class RemoteControlWithUndo {
  List<Command> history = [];

  void setCommand(Command command) {
    history.add(command);
  }

  void pressButton() {
    if (history.isNotEmpty) {
      history.last.execute();
    }
  }

  void pressUndoButton() {
    if (history.isNotEmpty) {
      history.last.undo(); // Вызывает метод undo у последней команды
      history.removeLast(); // Удаляет последнюю команду из истории
    }
  }
}
void main() {
  // Создаем объекты
  final light = Light();
  final lightOn = LightOnCommand(light);

  // Настройка инициатора
  final remoteControl = RemoteControl();
  remoteControl.setCommand(lightOn);

  // Имитируем нажатие кнопки
  remoteControl.pressButton(); // Включит свет
}