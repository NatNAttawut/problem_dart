// โจทย์ที่ 3: ตรวจสอบว่าเป็นเลขเฉพาะ (Prime Number)
// คำอธิบาย:
// เขียนโปรแกรมที่รับตัวเลขจำนวนเต็มจากผู้ใช้ และตรวจสอบว่าตัวเลขนั้นเป็น "เลขเฉพาะ (Prime Number)" หรือไม่ 
// โดยใช้ฟังก์ชันในการตรวจสอบเงื่อนไข


import 'dart:io';

bool isPrime(int num) {
  if (num <= 1) return false;// num ไม่มีทางน้อยกว่าหรือเท่ากับ 1
  for (int i = 2; i <= num ~/ 2; i++) { 
    if (num % i == 0) return false;// หากหารไม่มีเศษ หรือ ลงตัว จะรีเทิร์น false
  }
  return true;
}

void main() {
  stdout.write('โปรดกรอกตัวเลข: ');
  int num = int.parse(stdin.readLineSync()!);

  if (isPrime(num)) {
    print('$num เป็นจำนวนเฉพาะ');
  } else {
    print('$num ไม่เป็นจำนวนเฉพาะ');
  }
}
