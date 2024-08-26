void main(){


  Calculator calc =  Calculator();
  Calculator.Add();  //accessing static function
  calc.subtract();
  calc.Multiply();
  calc.Divide();

// print('Number one is :{Calculator.num1} \n Number two is: {calculator.num2}');

  print('number 2 is:' +   Calculator.num2.toString());
  print(Calculator.num1); //accesing static variable

}



class Calculator{

  Calculator(){
    num1=3;
    num2=9;
  }
  static late int num1;
  static late int num2;

  static Add(){
    print('Addition is: ${num1 + num2}');
  }

  void subtract(){
    print('Subtraction is: ${num1 - num2}');
  }

  void Multiply(){
    print('Multiplication is: ${num1 * num2}');
  }

  void Divide(){
    if(num2!=0){
      print('Subtraction is: ${num1 / num2}');

    }else(print('zero division Error '));
  }

}



/* constracture 1:default constracture  2: parameterised Constructor 3:named Constructor 4:Factory Constructor
*
* Static method: similar to static variable we don't need to make object when we use static keyword
*
*Types of Classes
*   concrete class: is a regular class provides blue print
*   abstract class:  we can not make its object directly. but can be used as a base for other classes.
*   Sealed class: final class: checked class:
*
*
* */
