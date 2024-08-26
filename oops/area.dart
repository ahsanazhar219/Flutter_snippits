void main() {
  Rectangle rec = Rectangle();
  rec.calcualteArea(3, 5);

  Triangle tri = Triangle();
  tri.calcualteArea(4, 5);
}

class Shape {
  double? area;

  void calcualteArea(double length, double width) {}
}

class Rectangle extends Shape {
  @override
  void calcualteArea(double length, double width) {
    area = (length * width);
    print('Area of Rectanle is: ${area}');
  }
}

class Triangle extends Shape {
  @override
  void calcualteArea(double length, double width) {
    area = (length * width / 2);
    print('Area of Triangle is: ${area}');
  }
}
