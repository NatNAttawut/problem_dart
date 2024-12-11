// โจทย์ที่ 7: แปลงหน่วยเงิน
// คำอธิบาย:
// ให้เขียนโปรแกรมที่แปลงค่าจากเงินบาทไปเป็นสกุลเงินอื่นๆ โดยมีเรตการแปลงเก็บในรูปแบบ Map 
// และสามารถเลือกสกุลเงินที่ต้องการแปลงได้จากตัวเลือก

// ข้อกำหนด:
// ใช้ฟังก์ชันในการคำนวณการแปลงค่า

// ตัวอย่างผลลัพธ์
// Input Amount: 100
// Currency: USD
// Converted Amount: 2.86

import 'dart:io';

void main() {
  Map<String, double> exchangeRates = {'USD': 0.0286, 'EUR': 0.0269, 'JPY': 4.11}; // Key เป็นชื่อของสกุลเงิน Value เป็น อัตราเงิน

  stdout.write('Input Amount (THB): '); // รับค่าเงินบาท
  double amount = double.parse(stdin.readLineSync()!); //แปลงเป็น Double

  stdout.write('Currency (USD/EUR/JPY): '); // รับสกุลเงินที่ต้องการเปลี่ยน
  String currency = stdin.readLineSync()!;

  if (exchangeRates.containsKey(currency)) { // ตรวจสอบข้อมูลที่กรอกว่ามีสกุลเงินนั้นไหม
    double convertedAmount = amount * exchangeRates[currency]!; //เอาค่าเงินบาทไปคูณกับ Value
    print('Converted Amount: ${convertedAmount.toStringAsFixed(2)} $currency');
  } else {
    print('Currency not supported.');
  }
}
