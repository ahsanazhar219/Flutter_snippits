
void main(){

  var studentemployee = StudentEmployee('ahsan', 'Ajk It ', 'Fire Base');
  studentemployee.intoduce();
  studentemployee.work();
}

class Person{
 late String name;
  Person(this.name);

  void intoduce(){

    print('hello my name is $name');
  }



}
mixin Student{
  String? school;

 void study(){
   print(' is stydying at $school');
 }

}

mixin Employee{

 late String company;

 void work(){

   print('is working at company $company');
 }
}

class StudentEmployee extends Person with Student, Employee{
  StudentEmployee(String name, String school, String company ): super(name){
    // this.name;
    this.school = school;
    this.company = company;
  }

}
