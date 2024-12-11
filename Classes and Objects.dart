void main(List<String> args) {
  // สร้างออบเจ็กต์จากคลาส
  Person person1 = Person(name: 'Alice', age: 25);
  person1.introduce();

  Person person2 = Person(name: 'Bob', age: 30);
  person2.introduce();

  // ใช้ Setter และ Getter
  person1.age = 26; // อัปเดตอายุผ่าน Setter
  print('Uddate Age of ${person1.name}: ${person1.age}'); //เข้าถึงอายุผ่าน Getter

  // การใช้ Named Constructor
  Person person3 = Person.anonymouse();
  person3.introduce();
  
  // การใช้ Static Method และ Static Property
  print('Number of People create: ${Person.numberofPeople}');
}

// การสร้างคลาส
class Person{
  //Properties (คุณสมบัติ)
  String name;
  int _age; // ใช้ _ เพื่อทำให้เป็น private

  // Static Property
  static int numberofPeople = 0;

  //Comstructor (ตัวสร้าง)
  Person({required this.name , required int age}) : _age = age {
    numberofPeople++;
  }

  //Named Comstructor (ตัวสร้างที่ตั้งชื่อ)
  Person.anonymouse() : name = 'Anonymouse', _age = 0{
    numberofPeople++;
  }

  //Getter สำหรับ _age
  int get age => _age;

  // Setter สำหรับ _age
  set age(int value){
    if (value > 0){
      _age = value;
    }
    else {
      print('Age must be positive');
    }
  }

  // Method (พฤติกรรม)
  void introduce() {
    print('Hi, My name is $name and I am $_age years old');
  }

  // Static Method
  static void displayInfo(){
    print('This is a static method in the Person class');
  }
}