// โจทย์ที่ 1: คำนวณส่วนลดจากจำนวนสินค้า
// คำอธิบาย
// ให้เขียนโปรแกรมที่รับจำนวนสินค้าที่ผู้ใช้ซื้อและราคาต่อหน่วย จากนั้นคำนวณราคาทั้งหมดพร้อมส่วนลดตามเงื่อนไข
// 1.	หากซื้อ 5 ชิ้นขึ้นไป ลดราคา 10%
// 2.	หากซื้อ 10 ชิ้นขึ้นไป ลดราคา 20%

import 'dart:io';

void main(List<String> args) {
  stdout.write("กรอกจำนวนสินค้าที่ซื้อ: ");
  var inputQuantity = stdin.readLineSync(); // รับค่าจำนวนสินค้า

  if (inputQuantity != null && inputQuantity.isNotEmpty) {
    var quantity = int.parse(inputQuantity); // แปลงค่าเป็น int

    stdout.write("กรอกราคาต่อหน่วย: ");
    var inputPrice = stdin.readLineSync(); // รับค่าราคาต่อหน่วย

    if (inputPrice != null && inputPrice.isNotEmpty) {
      var unitPrice = double.parse(inputPrice); // แปลงค่าเป็น double
      var totalPrice = quantity * unitPrice; // คำนวณราคาทั้งหมด

      // คำนวณส่วนลด
      double discount = 0;
      if (quantity >= 10) {
        discount = 0.2; 
      } else if (quantity >= 5) {
        discount = 0.1; 
      }

      var discountedPrice = totalPrice * (1 - discount); // ราคาหลังส่วนลด

      print("ราคาทั้งหมดก่อนส่วนลด: ${totalPrice.toStringAsFixed(2)} บาท");
      print("ส่วนลด: ${(discount * 100).toStringAsFixed(0)}%");
      print("ราคาทั้งหมดหลังส่วนลด: ${discountedPrice.toStringAsFixed(2)} บาท");
    } else {
      print("กรุณากรอกราคาต่อหน่วยที่ถูกต้อง");
    }
  } else {
    print("กรุณากรอกจำนวนสินค้าที่ถูกต้อง");
  }
}
