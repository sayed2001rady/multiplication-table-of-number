 //this code about multiplication table
  import 'dart:io';
  void main(List<String> arguments) {
    print("""what do you want to sea ?
1-the multiplication table of specific numper
2-the multiplication table of the whole number
           """);
    int make_choise=int.parse(stdin.readLineSync()!);
    if(make_choise==1)  //to watch the table of specific number
        {
      print("enter the nuber to get the multiblication table of it :");
      num the_number=int.parse(stdin.readLineSync()!);
      num get_the_result;
      print("_________________the table of $the_number ____________________");
      for(int i=0;i<=12;i++)
      {
        get_the_result=the_number*i;
        print("1- $the_number * $i = $get_the_result");
        print("__________________________________________________________");
      }
    }
    else if(make_choise==2)  //to watch the table of all number
        {
      for(int i=0;i<=12;i++)
      {
        print("_______________________________________________________________");
        print("                 (:   the table of $i   :)                       ");
        print("_______________________________________________________________");
        for (int j = 0; j <= 12; j++)
        {
          num get_the_result=j*i;
          print("1- $i * $j = $get_the_result");
        }
      }
    }
    else
    {
      print("enter right choise");
    }
  }


