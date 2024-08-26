// Mixin classes
mixin Cook {
  void cook_recipe(String recipe) {
    print("Ahsan is cooking $recipe!");
  }
}

mixin Author {
  void write_recipe(String recipe) {
    print("Ahsan is writing  recipe of $recipe!");
  }
}


class Person {
  final String name;

  Person(this.name);

  void introduce() {
    print("Hello! I am $name.");
  }

  void chefIntroduction() {
    print("I am a chef specializing in potato chips");
  }
}

class RecipeChef extends Person with Cook, Author {
  final String specialty;
  final String recipe;

  // final String name2;

  RecipeChef( this.specialty, this.recipe, String name) : super(name){

  }


  void introduce() {
    super.introduce();
    chefIntroduction(); // Call personalized chef introduction method
  }
}

// Main program
void main() {
  final chef = RecipeChef("Ahsan Azhar", "French cuisine", "finger fries");
  chef.introduce();
  chef.cook_recipe(chef.recipe); // Pass the recipe name
  chef.write_recipe(chef.recipe); // Pass the recipe name
}
