import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  //Assignment 2

  // Map
  bool value = true;
  Map myMap = {
    'name': 'Riyaz',
    'age': '20',
    'gender': value == true ? "Male" : "Female",
  };
  print(myMap);



  // Set
  Set mySet = {'A', 'B', 'C', 'D',
    for (int i = 0; i < 10; i++) 'E$i'};
  print(mySet);



  // Spread operator
  Set a={
    '1', '2','3','4','5'};
  List b=[...a,'6','7','8','9'];
  print(b);



  // Optional Positional perameters
  myFunction("Riyaz",20,30,40);

  // Positional Named peraeters
  myFunction2("Riyaz",b:20,c: 30, d: 50);


  // Higher Order Function
  mainFunction()();

  addTwoNumbers(){
    print(10+20);
  }
  mainFunction2(addTwoNumbers);


  // Programing Function
  mainFunction3();


  // inharitance
  var obj = Daughter();
  obj.age;
  obj.myFucntionOne();
  obj.myFucntionTwo();


  // Static
  StaticClass.age;
  StaticClass.staticValue();


  //interface class
 // body empty thakbe


 //Set And Get
 var  obj2 = SetClass();
 obj2.setAge= 30;
 obj2.getAge;
 print(obj2.getAge);


 }

 //Top Level Fucntion End




// Optional Positional perameters
myFunction(a,[b,c,d]){
  print(a);
  print(b);
  print(c);
  print(d);
}

// Positional Named perameters
myFunction2(a,{b,c,d}){
  print(a);
  print(b);
  print(c);
  print(d);
}

// Higher Order Function
mainFunction() {
  return () => print("Returning a function");
}
mainFunction2(Function function) {
function();
}

// Programing Function
mainFunction3(){
  addThreeNumbers(a,b,c){
    print(a+b+c);
  }
  addThreeNumbers(5, 10, 20);
}


// inharitance
 class Father {
  int age = 60;
  myFucntionOne(){
    print("Function1");
  }

  myFucntionTwo(){
    print("Function2");
  }
}


class Daughter extends Father{
  // Overriding
  @override
  myFucntionOne() {
    return super.myFucntionOne();
  }

}

abstract class MyClass{
//  abstract class er obj create hoi na
}


// Static
class StaticClass{
  static var age= 30;
  static staticValue(){}
}
// Static end


//interface
class NormalClass implements InterfaceClass {
  myFucntion6(){
    print(10+20);
  }

  @override
  fun7() {
    throw UnimplementedError();
  }

  @override
  fun8() {
    throw UnimplementedError();
  }
}
class InterfaceClass{
//  body empty thake
fun7(){}
fun8(){}
}

//interface end



// Set And Get
class SetClass{
  int? age ;
  set setAge(int a){
    age = a;
  }

  get getAge{
    return age;
  }
}




class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(),
    );
  }
}
