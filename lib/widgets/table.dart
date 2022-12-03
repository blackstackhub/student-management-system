import 'package:flutter/material.dart';
import 'package:sms/module/student.dart';

class StudentsTable extends StatefulWidget {
  const StudentsTable({super.key});

  @override
  State<StudentsTable> createState() => TableState();
}

class TableState extends State<StudentsTable> {
  late Future<List<Students>> futureStuents;
  TextStyle header = const TextStyle(fontSize: 20.0);
  TextStyle body = const TextStyle(fontSize: 16.0);

  @override
  void initState() {
    super.initState();
    futureStuents = fetchStudents();
  }

  @override
  Widget build(BuildContext context) {
    final dw = MediaQuery.of(context).size.width;
    return FutureBuilder<List<Students>>(
      future: fetchStudents(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            alignment: Alignment.center,
            child: Table(
              defaultColumnWidth: FixedColumnWidth(dw / 5.2),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                // HEAD
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(30),
                      child: Text('STUDENTS NAMES', style: header)),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(30),
                      child: Text('PROGRAMME', style: header)),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(30),
                      child: Text('LEVEL', style: header)),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(30),
                      child: Text('DEPARTMENT', style: header)),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(30),
                      child: Text('Admission Status', style: header)),
                ]),
                // BODY
                for (int i = 0; i < snapshot.data!.length; i++)
                  TableRow(children: [
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        child: Text(snapshot.data![i].name ?? "", style: body)),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        child: Text(snapshot.data![i].programme ?? "",
                            style: body)),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        child:
                            Text(snapshot.data![i].level ?? "", style: body)),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        child: Text(snapshot.data![i].department ?? "",
                            style: body)),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        child: Text(snapshot.data![i].admissionStatus ?? "",
                            style: body)),
                  ])
              ],
            ),
          );
        } else {
          return Text('ERROR ${snapshot.error}');
        }
      },
    );
  }
}
