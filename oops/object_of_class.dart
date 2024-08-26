void main() {

  var student1 = Student(); //first object of class

  student1.study();
  student1.sleep();
  student1.id = 56;
  student1.name = 'sk';
  print('${student1.id} and ${student1.name}');

  var student2 = Student(); //created second object of class

  student2.id = 45;
  print('${student2.id} and ${student2.name}');

  student2.study();
}

class Student {
  int? id = 23;  //instance or field variables
  String name = 'ahsan';

  void study() {

    print('${name} how are you');
  }

  void sleep() {
    print('${this.id} is his age');
  }
}
