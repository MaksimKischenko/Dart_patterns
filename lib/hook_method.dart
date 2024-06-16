abstract class AbstractClass {
  void templateMethod() {
    step1();
    hook();
  }

  void step1() {
    print("AbstractClass: Шаг 1");
  }

  void hook() {
    // Метод-перехватчик, который оставлен пустым
  }
}

class ConcreteClassA extends AbstractClass {
  @override
  void hook() {
    print("ConcreteClassA: Метод-перехватчик переопределен");
  }
}

class ConcreteClassB extends AbstractClass {
  @override
  void hook() {
    print("ConcreteClassB: Метод-перехватчик переопределен");
  }
}

void main() {
  final a = ConcreteClassA();
  final b = ConcreteClassB();
    final  = ConcreteClassB();

  a.templateMethod();
  b.templateMethod();
}


