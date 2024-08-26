mixin Cook {
  void cook_recipe(String name, String recipe) {
    print(
        'Method cook_recipe:  chef name is ${name} and he is making ${recipe}');
  }
}

mixin Author {
  void write_recipe(String name, String recipe) {
    print(
        'Method write_recipe: Author name $name is and he is writing recipe of $recipe ');
  }
}

class Person {
  final String name;

  final String specialty;

  Person(this.name, this.specialty);

  void intoduce() {
    print('Hello my name is $name and i have specialty in making $specialty');
  }
}

class RecipeChef extends Person with Cook, Author {
  final String recipe;

  RecipeChef(String name, String specialty, this.recipe)
      : super(name, specialty) {}
}

void main() {
  RecipeChef recipechef = RecipeChef('Ahsan', 'Baking', 'cake');
  recipechef.intoduce();
  recipechef.cook_recipe(recipechef.name, recipechef.recipe);
  recipechef.write_recipe(recipechef.name, recipechef.recipe);

  RecipeChef chef2 = RecipeChef("usman", 'meat', 'chicken');
  chef2.intoduce();
  chef2.cook_recipe(chef2.name, chef2.recipe);
}
