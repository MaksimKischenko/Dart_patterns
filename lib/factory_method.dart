abstract final interface class Shape {
  void draw();
}

final class Circle implements Shape {
  @override
  void draw() {
    print('Рисуем круг');\
  }
}

final class Rectangle implements Shape {
  @override
  void draw() {
    print('Рисуем прямоугольник');
  }
}

abstract interface class ShapeFactory {
  Shape createShape();
}

 class CreateCircle extends ShapeFactory {
  @override
  Shape createShape() {
    return Circle();
  }
}

 class CreateRectangle extends ShapeFactory {
  @override
  Shape createShape() {
    return Rectangle();
  }
}


void main() {

  final creatorA = CreateCircle();
  final creatorB = CreateRectangle();
  final createC = CreateRectangle(); 
  final creatorB = CreateRectangle();


  // final productA = creatorA.createShape();
  // final productB = creatorB.createShape();
  
  // productA.draw(); 
  // productB.draw(); 

}
