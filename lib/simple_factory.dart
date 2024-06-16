abstract final interface class Shape {
  void draw();
}

final class Circle implements Shape {
  @override
  void draw() {
    print('Рисуем круг');
  }
}

final class Rectangle implements Shape {
  @override
  void draw() {
    print('Рисуем прямоугольник');
  }
}

class ShapeFactory {
  Shape createShape(String type) {
    if (type == 'circle') {
      return Circle();
    } else if (type == 'rectangle') {
      return Rectangle();
    } else {
      throw ArgumentError('Неподдерживаемый тип фигуры');
    }
  }
}

void main() {

  final badCircle = Circle();
  final badRectangle = Rectangle();
  
  final shapeFactory = ShapeFactory();
  final circle = shapeFactory.createShape('circle');
}


