import 'package:flutter/material.dart';
import 'package:sms/widgets/appbar.dart';
import 'package:sms/widgets/header.dart';
import 'package:sms/widgets/table.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "Student Management System";

  @override
  Widget build(BuildContext context) {
    final dw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const AppBarPage(),
      body: mybody(dw),
      drawer: AppBarPageState.smsdrawer,
    );
  }

  Widget headers(dw) {
    return SizedBox(
      height: 200,
      child: ListView(
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.horizontal,
        children: [
          header(dw, "1,203", "New Students", null, Icons.accessibility_new),
          const SizedBox(
            width: 30,
          ),
          header(dw, "17,056", "Total Students", null, Icons.group),
          const SizedBox(
            width: 30,
          ),
          header(dw, "38", "New Drop Out", null, Icons.person),
          const SizedBox(
            width: 30,
          ),
          header(dw, "867", "Total Drop Out", null, Icons.people),
          const SizedBox(
            width: 30,
          ),
          header(dw, "582", "New Cases", null, Icons.cases),
          const SizedBox(
            width: 30,
          ),
          header(dw, "5,397", "Total Cases", null, Icons.cases_rounded),
        ],
      ),
    );
  }

  Widget mybody(dw) {
    return SingleChildScrollView(
      child: Column(
        children: [
          headers(dw),
          const StudentsTable(),
        ],
      ),
    );
  }
}
