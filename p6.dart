// โจทย์ที่ 6: จัดกลุ่มนักเรียนตามเกรด
// คำอธิบาย:
// เขียนโปรแกรมที่รับข้อมูลรายชื่อนักเรียนและเกรดในรูปแบบ List ของ Map 
// จากนั้นจัดกลุ่มนักเรียนตามเกรดในรูปแบบใหม่ที่เก็บใน Map โดย Key คือเกรด และ Value เป็นรายชื่อนักเรียนที่ได้เกรดนั้น

// ตัวอย่างผลลัพธ์
// Input: [{'name': 'Alice', 'grade': 'A'}, {'name': 'Bob', 'grade': 'B'}, {'name': 'Charlie', 'grade': 'A'}]
// Output: {'A': ['Alice', 'Charlie'], 'B': ['Bob']}



void main() {
  List<Map<String, String>> students = [
    {'name': 'Alice', 'grade': 'A'},
    {'name': 'Bob', 'grade': 'B'},
    {'name': 'Charlie', 'grade': 'A'}
  ];

  Map<String, List<String>> groupedStudents = {}; //เก็บข้อมูลเกรดเป็น Key ชื่อที่ได้เกรดเป็น Value

  for (var student in students) {
    String grade = student['grade']!; //ดึงค่าเกรด (grade) 
    String name = student['name']!; //ดึงชื่อ (name)  เครื่องหมาย ! คือระบุว่าไม่เป็น null

    if (!groupedStudents.containsKey(grade)) { //ใช้ containsKey(grade) เพื่อตรวจสอบว่าเกรดนี้มีอยู่ใน Map groupedStudents แล้วหรือยัง
      groupedStudents[grade] = []; // ถ้ายัง ให้เปลี่ยนเป็นค่าว่าง
    }
    groupedStudents[grade]!.add(name); //ใช้ groupedStudents[grade] เพื่อเข้าถึง List ที่ตรงกับเกรด (grade) เพิ่มชื่อ (name) เข้าไปใน List นั้น
  }

  print(groupedStudents);
}
