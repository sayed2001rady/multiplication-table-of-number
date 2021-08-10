import 'dart:io';

void main(List<String> arguments) {
  print("username:");
  String name=stdin.readLineSync()!;
  print("e_mail:");
  var e_mail=stdin.readLineSync()!;
  print("password");
  var password=stdin.readLineSync()!;
  print("age:");
  int age=int.parse(stdin.readLineSync()!);
  print("date of birth:");
  int date_of_birth=int.parse(stdin.readLineSync()!);
  print("country:");
  String country=stdin.readLineSync()!;
  print("city:");
  String city=stdin.readLineSync()!;
  print("phone number:");
  int phone_number=int.parse(stdin.readLineSync()!);
  print("state:");
  print("education:");
  String education=stdin.readLineSync()!;
  String state=stdin.readLineSync()!;
  print("you have sign up successfully ");
  sign_up(age,phone_number,date_of_birth,e_mail, city,education,fun_country: country,fun_name: name,fun_password: password,fun_state: state);
  print("""remember me ?
  1-yes
  2-no
      """);
  int remember_choise=int.parse(stdin.readLineSync()!);
  if(remember_choise==1)
    {
      print("we saved you data thank you");
    }
  else
    {
      print("you have not save your sign");
    }
}
void sign_up(int fun_age,num fun_phone_numper,int fun_date_of_birth,var fun_email,String fun_city,String fun_education
    ,{String fun_name="admin",var fun_password="admin",String fun_country="egypt",String fun_state="not selected"})
{
  print("""
--------------------------the personal information--------------------------
-the name:$fun_name
____________________________________________________________________________
-e-mail:$fun_email
____________________________________________________________________________
-the password:$fun_password
____________________________________________________________________________
-the age:$fun_age
____________________________________________________________________________
-the date of birth:$fun_date_of_birth
____________________________________________________________________________
-the education:$fun_education
____________________________________________________________________________
-phone number:$fun_phone_numper
____________________________________________________________________________
-country:$fun_country     -city:$fun_city
____________________________________________________________________________
-state:$fun_state
____________________________________________________________________________
      """);
}
