// Абстрактные продукты
abstract class Button {
  void paint();
}

abstract class Checkbox {
  void paint();
}

// Абстрактная фабрика
abstract class GUIFactory {
  Button createButton();
  Checkbox createCheckbox();
}

// Конкретные продукты для Windows
class WindowsButton implements Button {
  @override
  void paint() {
    print('Windows button is painted.');
  }
}

class WindowsCheckbox implements Checkbox {
  @override
  void paint() {
    print('Windows checkbox is painted.');
  }
}

// Конкретные продукты для macOS
class MacOSButton implements Button {
  @override
  void paint() {
    print('macOS button is painted.');
  }
}

class MacOSCheckbox implements Checkbox {
  @override
  void paint() {
    print('macOS checkbox is painted.');
  }
}

// Конкретная фабрика для Windows
class WindowsFactory implements GUIFactory {
  @override
  Button createButton() {
    return WindowsButton();
  }

  @override
  Checkbox createCheckbox() {
    return WindowsCheckbox();
  }
}

// Конкретная фабрика для macOS
class MacOSFactory implements GUIFactory {
  @override
  Button createButton() {
    return MacOSButton();
  }

  @override
  Checkbox createCheckbox() {
    return MacOSCheckbox();
  }
}

void main() {
  final os = 'Windows'; // Можно заменить на 'macOS' для тестирования на macOS.

  GUIFactory factoryClass;

  if (os == 'Windows') {
    factoryClass = WindowsFactory();
  } else if (os == 'macOS') {
    factoryClass = MacOSFactory();
  } else {
    throw ArgumentError('Unknown operating system');
  }

  final button = factoryClass.createButton();
  final checkbox = factoryClass.createCheckbox();

  button.paint(); // Вывод: Windows button is painted.
  checkbox.paint(); // Вывод: Windows checkbox is painted.
}
