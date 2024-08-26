/*Constructors and its types:
constructor has no return type this is a special function in class and its name will be same as calss
* 1 Default Constructor
* 2 parameterized Constructor    => it will contain some parameters Eg: Student(int id, string name){}
* 3 Named Constructor
* 4 Constant Constructor

*       1 Default Constructor  => we don't have to declare default Constructor unless we
*                                  required to write any code in Constructor eg Student(){ //code} */

void main() {
  var student1 = Student(29, 'ahsan'); //first object of class

  // student1.study(); //caling fundtion
  // student1.sleep();
  // student1.id = 56;
  // student1.name = 'sk';
  print('${student1.id} and ${student1.name}');

  var student2 = Student(45, 'azhar'); //created second object of class

  // student2.id = 45;
  // print('${student2.id} and ${student2.name}');

  // student2.study();

  var student3 = Student.myCustomconstructor(
      45, 'khan'); //calling or making object of my named constructor
  print('${student3.id} and ${student3.name}');
  student3.sleep();
}

class Student {
  int? id = 23; //instance or field variables
  String name = 'ahsan';

  // Student(){
  //  print('This is my default Constructor');    //we can not use both default and parameterized constructors
  //at the same time in class so default constructor is commented
  // }

  Student(int id, String name) {
    //parameterized Constructor
    this.id = id;
    this.name = name;
  }

  Student.myCustomconstructor(this.id, this.name) {
    //Named constructor you can also add paramaters in it if u want.

    print('this is my named constructor');
  }

  void study() {
    print('${name} how are you');
  }

  void sleep() {
    print('${this.id} is his age and he is sleeping');
  }
}
