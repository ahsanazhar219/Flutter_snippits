void main(){
  enumName enumm = enumName.blue;

  if(enumm==enumName.green){

    print('Favorite color is green');

  }else if(enumm == enumName.blue){
    print('Favorite color is blue $enumm');
  }else if(enumm == enumName.red){
    print('Favorite color is red');
  }else{
    print('there is no fav color');
  }


}

enum enumName{
  red,
  green,
  blue,
  yellow,
  noColor,
}

