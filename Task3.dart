abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void printArea(Shape shape) {
  print('Area: ${shape.area()}');
}

void main() {
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);
  printArea(circle);
  printArea(rectangle);
}
