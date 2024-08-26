abstract class Drivable {
  void start();

  void accelerate();

  void brak();
}

class Car implements Drivable{
  @override
  void start(){
    print('car started');

  }
  @override
  void accelerate(){

    print('Car accelerating');
  }

  @override
  void brak(){

    print('Car breaking');
  }

  String? brand;
  int? year;

  Car(this.brand, this.year);
}

void main(){
  final car = Car('Honda', 2024);
  car.start();
  car.accelerate();
  car.brak();

  print('Car Brand: ${car.brand}');
  print('Car Model: ${car.year}');

}


