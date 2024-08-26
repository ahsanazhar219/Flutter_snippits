void main(){
  HighSchoolBook highSchoolBook = HighSchoolBook();
  highSchoolBook.calcFee(200);

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

  void calcFee(){}

}


class  HighSchoolBook{
  // late int lateFee;

  @override
  void calcFee(int lateFee){
    print('Late fee for HighSchool book is $lateFee');

  }


}