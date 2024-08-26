void main() {
  // Rectangle rec = Rectangle(2, 2);
  Rectangle rec = Rectangle(length: 2, width: 3);
  rec.calcualteArea();

  Triangle tri = Triangle(2, 9);
  tri.calcualteArea();

  Triangle trii = Triangle(4, 4);
  trii.calcualteArea();

  Triangle tri2 = Triangle();
  tri2.calcualteArea();

}

class Shape {
  double? area;
  double? length;
  double? width;

  void calcualteArea() {}
}

class Rectangle extends Shape {

  Rectangle({ double? length, double? width}) { //named parameters in function using {} brackets
    // super.area;
    super.length = length;
    super.width = width;
  }

  @override
  void calcualteArea() {
    area = (length! * width!);
    print('Area is: ${area}');
  }
}

class Triangle extends Shape {


  Triangle([double length =2, double width = 4]) { //optional parameters in function using [] brackets. also given default values
    super.length = length;
    super.width = width;
  }

  @override
  void calcualteArea() {
    area = (length! * width! / 2);
    print('Area is: ${area}');
  }
}
