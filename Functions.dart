void main(List<String> args) {
  // 1. ฟังก์ชันแบบปกติ
  int result = addNumbers(10, 20);
  print('Sum: $result');

  // 2. ฟังก์ชันแบบมีค่าเริ่มต้น (Default Parameters)
  print('Area of Ractangle: ${calculateArea(5)}');
  print('Area of Ractangle: ${calculateArea(5,3)}');

  // 3. ฟังก์ชันแบบ Named Parameters
  printGreeting(name: 'Alice', age: 25);

  // 4. ฟังก์ชันแบบ Anonymouse (Lambda Function)
  var square = (int number) => number * number;
  print('Square of 4: ${square(4)}');

  // 5. ฟังก์ชันแบบ Recursive
  int factorialResult = factorial(5);
  print('Factorial of 5: $factorialResult');

  // 6. ฟังก์ชันไม่มีการส่งค่ากลับ (Void Function)
  printMessage();
}

  // 1.  ฟังก์ชันแบบปกติ
  int addNumbers(int num1 , int num2) {
    return num1 + num2;
    }

  // 2. ฟังก์ชันแบบมีค่าเริ่มต้น (Default Parameters)
  int calculateArea(int width , [int height = 10]){
    return width * height;
  }

  // 3. ฟังก์ชันแบบ Named Parameters
  void printGreeting({required String name , required int age}){
    print('Hello, My Name is $name and I am $age years old');
  }

  // 4. ฟังก์ชันแบบ Anonymouse (Lambda Function) สามารถแสดงใน main

  // 5. ฟังก์ชันแบบ Recursive (เรียกตัวเอง)
  int factorial(int number){
    if (number <= 1){
      return 1;
    }
    return number * factorial(number - 1);
  }

  // 6. ฟังก์ชันไม่มีการส่งค่ากลับ (Void Function)
  void printMessage(){
    print('This is a message from a void function');
  }