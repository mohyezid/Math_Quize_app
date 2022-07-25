 
import 'dart:core';
import 'dart:io'; 
class Question{
  String Q;
  double A;
  Question(this.Q,this.A);

}
main(){
  List<Question> q =[Question("5+5", 10.0),Question("5*5/10", 2.5),Question("1000/10 * 9", 900.0)];
  stdout.writeln("Answer the question below one by one: First Question :-");

  int score = 0;
 for( Question i in q){
  
    stdout.writeln(i.Q);
    var ans =  stdin.readLineSync();
     
    if (ans!=null){double answer = double.parse(ans);
    
    if (answer == i.A){
      print("correct");
      score+=1;
    }
    else{
  print("incorrect the Answer was ${i.A}");
    }
    }
    
 }
 print("You has Completed the quize Your total Mark is : $score/${q.length}");
}
 