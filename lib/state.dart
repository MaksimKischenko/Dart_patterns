// Абстрактное состояние
abstract class State {
  void doAction(Context context);
}

// Конкретные состояния
class StateA implements State {
  @override
  void doAction(Context context) {
    print("State A");
    context.state = StateB(); // Переход к следующему состоянию
  }
}

class StateB implements State {
  @override
  void doAction(Context context) {
    print("State B");
    context.state = StateA(); // Переход обратно к первому состоянию
  }
}

// Контекст
class Context {
  State state;

  Context(this.state);

  void request() {
    state.doAction(this);
  }
}

void main() {
  final context = Context(StateA());

  context.request(); // Вывод: State A
  context.request(); // Вывод: State B
  context.request(); // Вывод: State A
}


