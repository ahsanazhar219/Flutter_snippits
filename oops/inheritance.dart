void main(){
  Area area = Area(12, 45);
  area.Rectangle();
  print('area of tringles');
  area.Tringle(width: 3, height: 6);
  print('height is: ${area.height} and width is:  ${area.width}');

  area.Tringle(height: 5, width: 7);

  // area.Display();


  var rectangle2 = Area(5, 6);
  print('Second object ');
  rectangle2.Rectangle();

}


class Shape{
  int width;
  int height;
  Shape(this.width, this.height);



  void Display(){

    print('height is $height and width is $width');
  }


}

class Area extends Shape{

  Area(super.width, super.height);


  void Rectangle(){
    int area;

    area = height*width;
    print('Area of Rectangle is: $area');

    print('height is: ${super.height} and width is:  ${super.width} \n called dispaly function of base class');

    super.Display();



  }

  void Tringle({ width,  height }){
    double area;

    area= width*height/2;
    print('Area of triangle is $area');

    print('height is: ${super.height} and width is:  ${super.width}');


  }

}