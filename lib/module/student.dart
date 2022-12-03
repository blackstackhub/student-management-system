import 'dart:convert';

class Students {
  String? name;
  String? department;
  String? admissionStatus;
  String? programme;
  String? level;

  Students(
      {this.name,
      this.department,
      this.admissionStatus,
      this.programme,
      this.level});

  factory Students.fromJson(Map<String, dynamic> json) {
    return Students(
      name: json['name'],
      department: json['department'],
      admissionStatus: json['admission status'],
      programme: json['programme'],
      level: json['level'],
    );
  }
}

Future<List<Students>> fetchStudents() async {
  List da = [
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1
  ];
  var st =
      '{"name": "Ademola Sulaimon", "department": "Comouter Science", "admission status": "pending", "programme": "full time", "level": "HND1"}';
  List<Students> students = [];
  for (var a in da) {
    students.add(Students.fromJson(json.decode(st)));
  }
  return students;
}
