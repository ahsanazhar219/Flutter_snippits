//Student Management System
main() {
  Student student = Student();
  student.name = 'Ahsan';
  student.age = 23;
  student.grade = 'A';

  String stuname = student.getName; //made a new variable and assigned getname to this variable
  print('Name is: ${stuname}'); //printed the variable

  print('Grade is: ${student.getGrade}'); //Directly printing value

  print('Age is: ${student.getAge}');
} //main function

class Student {
  late String _name;
  late int _age;
  late String _grade;

  String get getName {
    return _name;
  }

  int get getAge {
    return _age;
  }

  String get getGrade {
    return _grade;
  }

  set name(String newName) {
    _name = newName;
  }

  set age(int newAge) {
    _age = newAge;
  }

  set grade(String newGrade) {
    _grade = newGrade;
  }
} //class
