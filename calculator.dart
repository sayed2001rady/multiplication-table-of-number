//this code is to calc some operation
import 'dart:io';
void main(List<String> arguments) {
  print("this is calculator");
  print("enter the first numper:");
  num first_numper=double.parse(stdin.readLineSync()!); //to get the first number from the user
  print("enter the operation:");
  var the_operation=stdin.readLineSync()!;  //to get the operation from the user
  print("enter the second numper:");
  num second_number=double.parse(stdin.readLineSync()!);  //to get the second number from the user
  var addition=first_numper+second_number;  //this line to add the number
  num suptraction=first_numper-second_number;  //and this to subtract it
  num division=first_numper/second_number;  //and this to divide them
  var multiplication=first_numper*second_number;  //and this to multiple them
  num reminder=first_numper%second_number;  //and this to find the reminder of the two number
  // to print the operation based on your choise
  if(the_operation=='+')
    {
      print("$first_numper + $second_number = $addition");
    }
  else if(the_operation=='-')
    {
      print("$first_numper - $second_number = $suptraction");
    }
  else if(the_operation=='*')
    {
      print("$first_numper * $second_number = $multiplication");
    }
  else if(the_operation=='/')
  {
    //check the nun zero division
    second_number != 0? print("$first_numper / $second_number = $division"): print("divide by zero error!");
  }
  else if(the_operation=='%')
    {
      // check whether the two number are integer or not
      if(first_numper%1==0&&second_number%1==0)
        {
          print("$first_numper % $second_number = $reminder");
        }
        else
          {
               print("this operation take integer only");
          }
    }
  else
    {
      print("xxx invalid data xxx");
    }

}
