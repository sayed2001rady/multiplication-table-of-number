import 'dart:io';
//code to print name 100 time
void main(List<String> arguments) {
  print("enter name to print it 100 time :");
  String name_to_print=stdin.readLineSync()!;
  print("""what is the type of loop do you want to use ?
 1-for loop
 2-while loop
 3-do_while loop
      """);
  int your_loop=int.parse(stdin.readLineSync()!);
  if(your_loop==1)   // print with for loop
  {
    for (int i = 1; i <= 100; i++)
    {
      print("$i-$name_to_print");
    }
  }
  else if(your_loop==2)   //print with while loop
    {
      int j=1;
      while(j<=100)
        {
          print("$j-$name_to_print");
          j++;
        }
  }
  else if(your_loop==3)//print by do while loop
    {
      int j=1;
      do
        {
          print("$j-$name_to_print");
          j++;
        }while(j<=100);
    }
  else
    {
      print("invalid choise");
    }
}
