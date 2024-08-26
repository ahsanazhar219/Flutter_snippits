// void main(){
//   var parent =childClass();
//   parent.functionname();
//
// }
//
// class parentClass{
//   void functionname(){
//
//   }
//
// }
//
// class childClass extends parentClass{
//   @override
//   void functionname(){
//     print('hello i am polymorphism');
//
//   }
//
//
// }

class Employee{
  void salary(){
    print('Employee Salary is \$1000.');

  }

}

class Manager extends Employee{
  @override
  void salary(){
    print('Managers salary is \$2000. ');

  }


}

class Developer extends Employee{
  @override
  void salary(){
    print('Developer salary is \$1500.');

  }

}

void main(){
  Manager man = Manager();
  man.salary();

  Developer dev = Developer();
  dev.salary();

}

