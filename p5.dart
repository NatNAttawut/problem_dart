// โจทย์ที่ 5: หาคะแนนสูงสุดพร้อมชื่อผู้เล่น
// คำอธิบาย:
// เขียนโปรแกรมที่รับข้อมูลคะแนนของผู้เล่นในรูปแบบ Map โดย Key เป็นชื่อผู้เล่น และ Value 
// เป็นคะแนน จากนั้นหาผู้เล่นที่ได้คะแนนสูงสุด พร้อมแสดงผลลัพธ์

// ข้อกำหนด:
// ใช้ฟังก์ชันในการคำนวณคะแนนสูงสุด

// ตัวอย่างผลลัพธ์
// Input: {'Alice': 95, 'Bob': 85, 'Charlie': 90}
// Highest Scorer: Alice with 95 points



void main() {
  Map<String, int> scores = {'Alice': 95, 'Bob': 85, 'Charlie': 90};

  String highestScorer = scores.keys.first; //นำ Key แรกใน Map มาเก็บใน
  int highestScore = scores.values.first; // นำ Value แรกใน Map มาเก็บ

  scores.forEach((key, value) { 
    if (value > highestScore) {
      highestScorer = key; //ถ้าคะแนนปัจจุบัน (value) สูงกว่า highestScore: อัปเดต highestScorer เป็นชื่อผู้เล่น (key)
      highestScore = value; //อัปเดต highestScore เป็นคะแนนปัจจุบัน (value)
    }
  });

  print('Highest Scorer: $highestScorer with $highestScore points');
}
