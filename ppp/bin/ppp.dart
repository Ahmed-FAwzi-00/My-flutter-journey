import "dart:io";

void main() {
  bool contune = true;
  bool accepte = true;
  List<Map<String, dynamic>> users = [];

  //list one is row & list two is column
  List<List<String>> seatMap = [
    ['E ', 'E ', 'E ', 'E ', 'E '],
    ['E ', 'E ', 'E ', 'E ', 'E '],
    ['E ', 'E ', 'E ', 'E ', 'E '],
    ['E ', 'E ', 'E ', 'E ', 'E '],
    ['E ', 'E ', 'E ', 'E ', 'E ']
  ];

  void displaySeatMap() {
    print(seatMap[0]);
    print(seatMap[1]);
    print(seatMap[2]);
    print(seatMap[3]);
    print(seatMap[4]);
  }

  while (contune == true) {
    print("Welcome To Our Theater \n \t * Please Choose your Order");
    print(
        "\t 1 : Book A Seat. \n\t 2 : Show Seats Map. \n\t 3 : Show User Booked. \n\t 4 : Exist. ");
    int? choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("Enter Your Name : ");
        String? name = stdin.readLineSync();
        print("Enter Your Phone Number : ");
        int? phone = int.parse(stdin.readLineSync()!);

        while (accepte == true) {
          print("\t\tSeat Map");
          displaySeatMap();
          print("choose between 0 => 4");
          print("Enter Row Seat : ");
          int? seatRow = int.parse(stdin.readLineSync()!);
          print("Enter Column Seat : ");
          int? seatColumn = int.parse(stdin.readLineSync()!);
          if (seatMap[seatRow][seatColumn] == "B") {
            print("\tThe Seat Was Booked");
          } else {
            users.add({
              "name": "$name",
              "phone": phone,
              "seatRowNumber": seatRow,
              "seatColNumber": seatColumn
            });
            seatMap[seatRow][seatColumn] = "B";
            print("\t Booked Successfully");
            accepte = false;
          }
        }

      case 2:
        displaySeatMap();

        break;
      case 3:
        print(users);
        break;
      case 4:
        contune = false;
        print("\n Thank you for Choosing Our Theater");
        break;
      default:
        print("Faulte");
    }
    accepte = true;
  }
}
