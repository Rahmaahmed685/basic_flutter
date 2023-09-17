import 'package:untitled/screens/patient.dart';
import '../screens/doctor.dart';

main(){
  User user = User("Rahma", 1);
  Patient patient = Patient(01054673456);
  Doctor doctor = Doctor("3 str rasa fa", "Required Purchase of Drugs at Wholesale Only with License: Eligible Clinics");
}

class User {
  final String name;
  final int id;
  User(this.name, this.id) {
    displayInfo();
  }
  void displayInfo() {
    print('Name: $name, Id : $id');
  }   }

