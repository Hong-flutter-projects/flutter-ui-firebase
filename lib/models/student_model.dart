class StudentModel {
  final String? name;
  final String? age;
  final String? email;
  final String? address;
  final String? address2;

  StudentModel({this.name, this.age, this.email, this.address, this.address2});

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
        name: json['name'],
        age: json['age'],
        email: json['email'],
        address: json['address'],
        address2: json['address2'],
      );

  Map<String, dynamic> tojson() => {
        "name": name,
        "age": age,
        "email": email,
        "address": address,
        "address2": address2,
      };
}
