void main() {
   String StudentName = "Ahmed";
  int Degree = 20;
  double GPA = 3.5;
  List<String> Subject = ['Maths', 'Arabic', 'English'];
  print("Student Name is $StudentName ");
  print("Student GPA is : $GPA");
  print("Student Sudject is :$Subject");

  if (Degree >= 85) {
    print("Student Degree is : A");
  } else if (Degree > 75 && Degree < 85) {
    print("Student Degree is : B");
  } else if (Degree > 50 && Degree < 75) {
    print("Student Degree is : C");
  } else {
    print("Student Degree is : F");
  }
 print(StudentName.contains(RegExp(r'[A-Z]'))); 
  
}
