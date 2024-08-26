void main(){

 Book.Author = 'Ahsan';
 print('author Name is ${Book.Author}');
  HighSchoolBook highSchoolBook = HighSchoolBook();

  highSchoolBook.setId = 3001;
  highSchoolBook.setTitle = "English";

  highSchoolBook.calcFee(200);

  CollegeBook collegeBook = CollegeBook();
collegeBook.setTitle = 'urdu';
collegeBook.setId = 3003;
  collegeBook.calcFee(700);





}

abstract class Book{
  late int _id;
  late String _title;
  static late String Author;

  int get getId{
    return _id;
  }

  String get getTitle{
    return _title;
  }

  set setId( int newId){
    _id=newId;

  }

  set setTitle(String newTitle){
    _title=newTitle;

  }

  void calcFee(int lateFee){}

}


class  HighSchoolBook extends Book{

   @override
  void calcFee(int lateFee){
     print('Book title: $getTitle \n Id: $getId \n HighSchool late fee is $lateFee');

   }


}

class  CollegeBook extends Book{

  @override
  void calcFee(int lateFee){

    print('Book title: $getTitle \n Id: $getId \n College late fee  is $lateFee');


  }


}
