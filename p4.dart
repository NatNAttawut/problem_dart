 // โจทย์ที่ 4: วิเคราะห์คำในประโยค

// คำอธิบาย:
// เขียนโปรแกรมที่รับข้อความจากผู้ใช้ และแยกคำในข้อความออกเป็น List จากนั้นนับจำนวนคำที่ไม่ซ้ำกัน (Unique Words) โดยใช้ Set และคืนผลลัพธ์ดังนี้:
// ●	จำนวนคำทั้งหมด
// ●	จำนวนคำที่ไม่ซ้ำ

// ข้อกำหนด:
// ใช้ฟังก์ชันในการแยกคำและคำนวณ

// ตัวอย่างผลลัพธ์
// Input: "Dart is fun and Dart is powerful"
// Total Words: 6  
// Unique Words: 4  


import 'dart:io';

void main() {
  stdout.write('Enter a sentence: ');
  String input = stdin.readLineSync()!;
  List<String> words = input.split(' '); // ตัดคำโดยใช้ช่องว่างเป็นตัวคั่น

  Set<String> uniqueWords = words.toSet(); //นำคำที่ตัดมาใส่ใน List ที่เป็น Set ซึ่ง Set ไม่เก็บค่าซ้ำ

  print('Total Words: ${words.length}');
  print('Unique Words: ${uniqueWords.length}');
}
