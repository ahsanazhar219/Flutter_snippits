void main() {
  MonthlyEmployee monthlyEmployee = MonthlyEmployee(50000, 'Manager');
  monthlyEmployee.setName = 'Ahsan';
  monthlyEmployee.setId = 00003002;
  monthlyEmployee.calcPay();
  HourlyEmployee hourlyEmployee = HourlyEmployee(3, 'Teacher', 500);

  hourlyEmployee.setName = "Hamza";
  hourlyEmployee.setId = 0001003;
  hourlyEmployee.calcPay();
}

abstract class Employee {
  late int _id;
  late String _name;
  late String position;

  // late double salary;

  int get getId {
    return _id;
  }

  set setId(int newId) {
    _id = newId;
  }

  String get getName {
    return _name;
  }

  set setName(String newName) {
    _name = newName;
  }

  Employee(this.position);

  void calcPay() {}
}

class MonthlyEmployee extends Employee {
  late double monthlySalary;

  MonthlyEmployee(
    this.monthlySalary,
    super.position,
  );

  @override
  void calcPay() {
    print('The Monthly salary of $getName with id: $getId is $monthlySalary');
  }
}

class HourlyEmployee extends Employee {
  late double noOfhour;
  late double hourRate;

  HourlyEmployee(this.noOfhour, super.position, this.hourRate);

  @override
  void calcPay() {
    print('The Hourly salary of $getName with id: $getId is ${hourRate * noOfhour}');
  }
}
