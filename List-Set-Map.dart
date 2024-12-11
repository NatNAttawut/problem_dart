void main(List<String> args) {
  // 1. การใช้ List
  print('List Example:');
  List<String> fruits = ['Apple' , 'Banana' , 'Cherry'];
  fruits.add('Date'); //เพิ่มสมาชิกใน List
  print('Fruits: $fruits');
  print('First Fruit: ${fruits[0]}'); //เข้าถึงสมาชิกด้วยดัชนี
  fruits.remove('Banana'); //ลบสมาชิก
  print('After Removal: $fruits');
  print('Number of Fruits: ${fruits.length}');

  // 2. การใช้ Set
  print('\nSet Example:');
  Set<int> numbers = {1 , 2 , 3 , 4};
  numbers.add(4); //เพิ่มค่าที่ซ้ำ (Set ไม่เก็บค่าซ้ำ)
  numbers.add(5); //เพิ่มค่าที่ไม่ซ้ำ
  print('Number: $numbers');
  numbers.remove(2); // ลบสมาชิก
  print('After Removal: $numbers');
  print('Contains 3? ${numbers.contains(3)}'); //ตรวจสอบสมาชิก

  // 3. การใช้ Map
  print('\nMap Example:');
  Map<String, int> scores = {'Alice' : 95 , 'Bob': 85, 'Charlie' : 90};
  scores['David'] = 88; //เพิ่มคู่ Key-Value ใหม่
  print('Scores: $scores');
  print('Score of Alice: ${scores['Alice']}'); //เข้าถึงโดยใช้ค่า Key
  scores.remove('Bob'); //ลบคู่ Key-Value
  print('After Removal: $scores');
  print('All Key: ${scores.keys}'); //ดึง Key ทั้งหมด
  print('All Value: ${scores.values}'); // ดึง Value ทั้งหมด

  //4. การวนลูปใน Collections
  print('\nLoop through List:');
  for(String fruit in fruits){
    print(fruit);
  }

  print('\nLoop through Set:');
  numbers.forEach((num){
    print(num);
  });

  print('\nLoop through Map:');
  scores.forEach((key, value){
    print('$key scored $value');
  });
}