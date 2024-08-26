
void main() {
  test(23, 89);
  printname('jkl'); //function clling
  printname('asdf');
  print(Add(23, 34));
  var x = marks();
  print(x!(10,45,34));

  // name();
  // student('hello', name);
}

void test([int? money, num? price]) {
  var c = (money! * price!);
  print('result $c');
}

void printname(String name) {
  print(name);
}

int Add(int a, int b) {
  //parameters

  int sum = a + b;
  return sum;
}

Function? marks() { //calling function in a function
  Function num = (int a, int b, int c) {
    return a + b + c;
  };

  return num;
}

// Function name = (String s) {
//   return s;
// };
//
// void student(String a, Function n) {
//   print('$a ${n('ahsan')}');
// }
