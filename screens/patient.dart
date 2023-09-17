
import 'package:untitled/inheritance/base.dart';
import 'package:untitled/screens/doctor.dart';

class Patient extends User{
final int phoneNumber;


Patient(this.phoneNumber): super("webm",2);

  @override
  void displayInfo() {
    print('Name: $name, Id: $id , Phone Number: $phoneNumber');
    // TODO: implement displayInfo
    //super.displayInfo();
  }
}