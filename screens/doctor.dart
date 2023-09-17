import 'package:untitled/inheritance/base.dart';

class Doctor extends User {
  final String clinicLocation;
  final String clinicLicences;

  Doctor(this.clinicLocation, this.clinicLicences) : super("Ahmed",3);

  @override
  void displayInfo() {
    // TODO: implement displayInfo
    print(
            'Name: $name,'
            ' id: $id,'
            ' Clinic Location: $clinicLocation,'
            ' Clinic Licences: $clinicLicences');
  }
}
