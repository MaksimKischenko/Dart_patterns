abstract class Graphic {
  void draw();
}

class Line extends Graphic {
  @override
  void draw() {
    print("Draw a line");
  }
}

class Circle extends Graphic {
  @override
  void draw() {
    print("Draw a circle");
  }
}

class Picture extends Graphic {
  List<Graphic> _graphics = [];

  void add(Graphic graphic) {
    _graphics.add(graphic);
  }

  @override
  void draw() {
    for (var graphic in _graphics) {
      graphic.draw();
    }
  }
}

void main() {
  final line = Line();
  final circle = Circle();

  final picture = Picture();
  picture.add(line);
  picture.add(circle);

  picture.draw();
}


// abstract class WidgetComponent {
//   void render();
// }

// class ButtonWidget extends WidgetComponent {
//   @override
//   void render() {
//     print("Render Button");
//   }
// }

// class ContainerWidget extends WidgetComponent {
//   List<WidgetComponent> _children = [];

//   void add(WidgetComponent component) {
//     _children.add(component);
//   }

//   @override
//   void render() {
//     print("Render Container");
//     for (var child in _children) {
//       child.render();
//     }
//   }
// }

// void main() {
//   var button = ButtonWidget();
//   var container = ContainerWidget();

//   container.add(button);

//   container.render();
// }