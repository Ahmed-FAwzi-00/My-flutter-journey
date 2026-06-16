void main() {
  //problem 1

  int parkingHours = 5;
  int parkingfee = 0;
  bool isWeekend = false;

  if (isWeekend == false) {
    //you can make it a if state for adding 50EGP
    if (parkingHours <= 2) {
      parkingfee = 0;
    } else if (parkingHours >= 3 && parkingHours <= 5) {
      parkingfee = (parkingHours * 10) - 20;
    } else if (parkingHours > 5) {
      parkingfee = 30 + (parkingHours - 5 * 20);
    }
  } else {
    if (parkingHours <= 2) {
      parkingfee = 50;
    } else if (parkingHours >= 3 && parkingHours <= 5) {
      parkingfee = 20 - (50 + (parkingHours * 20));
    } else if (parkingHours > 5) {
      parkingfee = 80 + (parkingHours - 5) * 20;
    }
  }
  print("Parking Hours is = $parkingHours");
  print("Parking Fees is = $parkingfee");

  // Problem 2

  int speedLimit = 120;
  int actualSpeed = 130;
  bool haveLicense = true;
  int fee;

  int sum = actualSpeed - speedLimit;

  if (sum >= 20) {
    fee = 1000;
  } else {
    fee = 500;
  }
  if (haveLicense == true) {
    fee = fee + 500;
    print("Don't Have License ");
  }

  print("Over Speed Fee is = $fee");

  //problem 3

  int start = 0;
  int end = 2;
  int countEven = 0;
  int countOdd = 0;
  int s = 0;

  for (int i = start; i <= end; i++) {
    print(i);
    s = s + i;

    if (i.isEven) {
      countEven++;
    } else {
      countOdd++;
    }
  }
  print("Sum of Numbers = $s");
  print("Count of Even number = $countEven");
  print("count of odd = $countOdd");

//star prpblem 4

  for (int i = 0; i < 3; i++) {
    String star = " ";
    for (int j = 0; j < 4; j++) {
      star += "*";
    }
    print(star);
  }

  for (int i = 1; i <= 10; i++) {
    String star = " ";
    for (int j = 0; j < i; j++) {
      star += "*";
    }
    print(star);
  }
  print(calcolate(operator: "+", n1: 1, n2: 5));

  int? x; //
  late int x2 = 0;
  x ?? 0 + x2;
  Car c1 = Car(name: "car", model: "gg", brand: "x2", color: "blue");
  Car c2 = Car.toyota(color: "blue");
  c1.display();
}

// function and Null safty
double calcolate({double n1 = 0, double n2 = 0, String operator = "+"}) {
  double sum = 0;
  if (operator == "+") {
    sum = n1 + n2;
  } else if (operator == "-") {
    sum = n1 - n2;
  } else if (operator == "*") {
    sum = n1 * n2;
  } else if (operator == "/") {
    sum = n1 / n2;
  } else {
    return 0;
  }
  return sum;
//classes
}

class Car {
  String? name;
  String? model;
  String? brand;
  String? color;
  void display() {
    print("Name is $name , model is $model ,brand is $brand , color is $color");
  }

  Car({this.name, this.model, this.brand, this.color});

  Car.toyota({this.color}) {
    name = "toyota";
  }
}
