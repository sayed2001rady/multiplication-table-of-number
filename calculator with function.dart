import 'dart:io';
//calculator with function code
void main(List<String> arguments) {
     // to line 12 take input from user
  print("""this program can only perfom this operation "
1-add +
2-subtraction - 
3-multiplication *
4-division / 
5-modules %
6-power ^
7-factorial f
      """);
  print("enter the first number:");
  num first_number=num.parse(stdin.readLineSync()!);
  print("enter the operation:");
  var operation=stdin.readLineSync()!;
  print("enter the second number:");
  num second_number=num.parse(stdin.readLineSync()!);
/*   while (!(is_Numeric(first_number)&&is_Numeric(second_number)))  // checking whether the entered input are numbers or not
    {
      print("**********enter only number please**********");
      print("enter the first number:");
      num first_number=num.parse(stdin.readLineSync()!);
      print("enter the second number:");
      num second_number=num.parse(stdin.readLineSync()!);
    } */
   while((is_numerical_operation(operation)))    //checking the operation
      {
        print("""you enterd wrong operation please enter any operation of this:
1-+
2--
3-*
4-/
5-%
6-^
7-f
""");
        var operation=stdin.readLineSync()!;
      }


//performing and calling the operations
  if(operation=='+')
    {
      var the_result_of_addition=addition(num1: first_number,num2: second_number);
      print("$first_number + $second_number = $the_result_of_addition");
    }
  else if(operation=='-')
    {
      var the_result_of_subtraction=subtraction(num1: first_number,num2: second_number);
      print("$first_number - $second_number = $the_result_of_subtraction");
    }
  else if(operation=='*')
    {
      var the_result_of_multiplication=multiplication(num2: second_number,num1: first_number);
      print("$first_number * $second_number = $the_result_of_multiplication");
    }
  else if(operation=='/')
    {
      while(division_by_zero(second_number))
        {
          print("second number can not be zero enter any number except zero");
          second_number=double.parse(stdin.readLineSync()!);
        }
        var the_result_of_division=division(num1: first_number,num2: second_number);
      print("$first_number / $second_number = $the_result_of_division");
    }
  else if(operation=='%')
    {
      while(the_modules_integer_checking(first_number, second_number))
        {
          print("you must enter an integer to calaculate the modules");
          first_number=double.parse(stdin.readLineSync()!);
          second_number=double.parse(stdin.readLineSync()!);
        }
        var the_result_of_modules=modules(number1: first_number,number2: second_number);
      print("$first_number % $second_number = $the_result_of_modules");
    }
  else if(operation=='^')
    {
      print("in this operation first number is the number and second is the exponent");
      var the_result_of_power=the_power(number1: first_number,exponent: second_number);
      print("$first_number ^ $second_number = $the_result_of_power");

    }
  else if(operation=="f")
    {
      print("""this operation for only one integer which one you want to perform ?
      1- first number
      2- second number
      """);
      int choise=int.parse(stdin.readLineSync()!);
      if(choise==1)
      {
        var the_result_of_factorial_of_first_number = factorial(
            number2: first_number);
        print("fact of $first_number = $the_result_of_factorial_of_first_number");
      }
      else if(choise==2)
        {
          var the_result_of_factorial_of_second_number = factorial(
              number2: second_number);
          print("fact of $second_number = $the_result_of_factorial_of_second_number");
        }
      else
        {
          print("invalid input :(");
        }

    }
  else
    {
      print("please chose any operation of the mentioned above");
    }
}
bool is_Numeric(var s)  //checking whether the inputs are number or not
{
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}
bool is_numerical_operation(var s)  //checking the enterd operation
{
  if(s=="+")
  {
    return false;
  }
  else if(s=='-')
  {
    return false;
  }
  else if(s=='*')
  {
    return false;
  }
  else if(s=='/')
  {
    return false;
  }
  else if (s=='%')
  {
    return false;
  }
  else if (s=='^')
  {
    return false;
  }
  else if (s=='f')
    {
      return false;
    }
  else
    return true;
}
bool division_by_zero(num checked_number) //division by zero error
{
  if(checked_number==0)
    {
      return true;
    }
  else
  {
    return false;
  }
}
bool the_modules_integer_checking(num number1,num number2) //checking if the number of modules operation are int or not
{
  if(number1%1==0&&number2%1==0)
    {
      return false;
    }
  else
    return true;
}
//the mathmatical operation
num addition({num num1=0,num num2=0})=>(num1+num2);
num subtraction({num num1=0,num num2=0})=>(num1-num2);
num multiplication({num num1=1,num num2=1})=>(num1*num2);
num division({num num1=1,num num2=1})=>(num1/num2);
num modules({num number1=1,num number2=1})=>(number1%number2);
num the_power({num number1=1,num exponent=1}) //power operation
{
  num holder=1;
  for(int i=1;i<exponent;i++)
    {
      holder=holder*number1;
    }
  return holder;
}
num factorial({num number2=1})  //factorial operation
{
  num holder=1;
  while(number2!=0)
    {
      holder*=number2;
      number2--;
    }

  return holder;
}
