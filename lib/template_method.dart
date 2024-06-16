abstract class AbstractClass {
  void templateMethod() {
    step1();
    step2();
  }

  void step1() {
    print("AbstractClass: Шаг 1");
  }

  void step2() {
    print("AbstractClass: Шаг 2");
  }
}

class ConcreteClassA extends AbstractClass {
  @override
  void step1() {
    print("ConcreteClassA: Переопределенный шаг 1");
  }

}

class ConcreteClassB extends AbstractClass {
  @override
  void step2() {
    print("ConcreteClassB: Переопределенный шаг 2");
  }
}

void main() {
  final a = ConcreteClassA();

  a.templateMethod();
}
//ConcreteClassA: Переопределенный шаг 1
//AbstractClass: Шаг 2



// abstract class AbstractClass {
//   // Метод с реализацией по умолчанию
//   void concreteMethod() {
//     print('Это конкретный метод.');
//   }

//   // Абстрактный метод-заглушка, который должен быть реализован в подклассах
//   void abstractMethod();
// }

// class ConcreteClass extends AbstractClass {
//   @override
//   void abstractMethod() {
//     print('Это реализация абстрактного метода.');
//   }
// }

// void main() {
//   var instance = ConcreteClass();
//   instance.concreteMethod(); // Вызывает метод с реализацией по умолчанию
//   instance.abstractMethod();  // Вызывает реализацию абстрактного метода
// }