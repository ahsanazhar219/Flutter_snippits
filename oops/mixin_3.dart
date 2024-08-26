mixin Cook {


  void cook_recipe(String name, String recipe) {
    print('Method cook_recipe:  chef name is ${name} and he is making ${recipe}');
  }
}

mixin Author {


  void write_recipe(String Aname, String recipe) {
    print('Method write_recipe: Author name is $Aname and he is writing recipe of $recipe ');
  }
}

class Person {
  final String name;
  final String specialty;

  Person(
    String this.name,
      this.specialty
  );

  void intoduce() {
    print('Hello my name is $name and i have specialty in making $specialty');
  }
}

class RecipeChef extends Person with Cook, Author {
  RecipeChef( String name,String specialty,) : super(name,specialty) {

  }
}

void main(){
  RecipeChef recipechef = RecipeChef('Ahsan', 'Cakes');
  recipechef.intoduce();
  recipechef.cook_recipe("iqbal", "burger");
  recipechef.write_recipe('Ahsan', 'cakes');

}
