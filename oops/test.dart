void main() {
  // Rectangle rec = Rectangle(2, 2);
  Rectangle rec = Rectangle(length: 2, width: 3);
  rec.calcualteArea();


}

class Shape {
  double? area;

  void calcualteArea() {}
}

class Rectangle extends Shape {

  Rectangle({ double length = 1, double width = 1}) {

  }

 double get length => length;

 double get width => width;
  

  @override
  void calcualteArea() {
    area = (length * width);
    print('Area is: ${area}');
  }
}

