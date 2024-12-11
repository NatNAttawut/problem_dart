// โจทย์ที่ 2: หาค่าต่ำสุด สูงสุด และค่าเฉลี่ย
// คำอธิบาย:
// ให้เขียนฟังก์ชันที่รับค่าตัวเลขใน List และคืนค่าค่าต่ำสุด (min), ค่าสูงสุด (max), และค่าเฉลี่ย (average) จากตัวเลขใน List


import 'dart:io';

void main() {

  List<int> numbers = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write('โปรดกรอกตัวเลขที่ $i: '); //กรอกตัวเลข 5 ตัวเลข
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number); // เพิ่มข้อมูลเข้า List
  }

  // ตรวจสอบว่า numbers มีข้อมูลก่อนคำนวณ
  if (numbers.isNotEmpty) {
    // หาค่า Min, Max และ Sum ด้วยการวนลูป
    int min = numbers[0];
    int max = numbers[0];
    int sum = 0; //5+

    for (int num in numbers) {
      if (num < min) min = num; // ตรวจข้อมูลใน List ทีละตัว แล้วเก็บใน min
      if (num > max) max = num;
      sum += num; // นำข้อมูลใน num ทีละตัวมาบวกกัน
    }

    double average = sum / numbers.length; // หาค่าเฉลี่ย

    print('List: $numbers');
    print('Min: $min');
    print('Max: $max');
    print('Average: ${average.toStringAsFixed(3)}');
  } else {
    print('ไม่มีข้อมูลในรายการ');
  }
}
