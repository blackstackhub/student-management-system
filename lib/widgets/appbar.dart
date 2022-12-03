import 'package:flutter/material.dart';

class AppBarPage extends StatefulWidget implements PreferredSizeWidget {
  const AppBarPage({super.key}) : preferredSize = const Size.fromHeight(55.0);

  @override
  final Size preferredSize;
  final name = "";
  @override
  State<AppBarPage> createState() => AppBarPageState();
}

class AppBarPageState extends State<AppBarPage> {
  ScrollController _controller = ScrollController();
  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        deviceWidth >= 1144.0
            ? AppBar(
                iconTheme:
                    const IconThemeData(color: Color.fromARGB(0, 0, 0, 0)))
            : AppBar(),
        deviceWidth >= 1144.0 ? navbars(deviceWidth) : _searching(deviceWidth),
        deviceWidth >= 1144.0
            ? Positioned(
                left: 0,
                child: Container(
                  width: deviceWidth / 20,
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  color: const Color.fromARGB(255, 66, 66, 66),
                  alignment: Alignment.centerLeft,
                  child: const CircleAvatar(backgroundColor: Colors.black),
                ),
              )
            : const SizedBox(),
      ],
    );
  }

  static TextStyle appbarFontStyle = const TextStyle(
    fontSize: 18,
  );
  Widget navbars(deviceWidth) {
    return ListView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(
          width: deviceWidth / 25,
        ),
        Container(
          width: deviceWidth / 8,
          alignment: Alignment.centerLeft,
          child: ListTile(
            leading: const Icon(Icons.home),
            title:
                Text('Home', textAlign: TextAlign.left, style: appbarFontStyle),
            onTap: () => print("object"),
          ),
        ),
        Container(
          width: deviceWidth / 6,
          alignment: Alignment.centerLeft,
          child: ListTile(
            leading: const Icon(Icons.admin_panel_settings),
            title: Text('Addmission',
                textAlign: TextAlign.left, style: appbarFontStyle),
            onTap: () => null,
          ),
        ),
        Container(
          width: deviceWidth / 4.5,
          alignment: Alignment.centerLeft,
          child: ListTile(
            leading: const Icon(Icons.payment),
            title: Text('Billing and Payment',
                textAlign: TextAlign.left, style: appbarFontStyle),
            onTap: () => null,
          ),
        ),
        Container(
          width: deviceWidth / 6,
          alignment: Alignment.centerLeft,
          child: ListTile(
            leading: const Icon(Icons.report),
            title: Text('Reporting',
                textAlign: TextAlign.left, style: appbarFontStyle),
            onTap: () => null,
          ),
        ),
        Container(
          width: deviceWidth / 4.6,
          alignment: Alignment.centerLeft,
          child: ListTile(
            leading: const Icon(Icons.monetization_on),
            title: Text('Student\'s Fees',
                textAlign: TextAlign.left, style: appbarFontStyle),
            onTap: () => null,
          ),
        ),
        _searching(deviceWidth),
      ],
    );
  }

  Widget _searching(deviceWidth) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: deviceWidth >= 1144.0 ? deviceWidth / 3 : deviceWidth / 1.2,
        child: const TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: Color.fromARGB(255, 106, 106, 106),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Colors.white24,
              ),
            ),
            hintText: 'Search for student',
          ),
        ),
      ),
    );
  }

  static Drawer smsdrawer = Drawer(
    width: 230,
    child: Column(
      children: [
        const UserAccountsDrawerHeader(
          accountEmail: Text('admin1@SchoolName.com'),
          accountName: Text('Dr. Olamide Badoo'),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.black,
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                alignment: Alignment.center,
                child: ListTile(
                  leading: const Icon(Icons.home),
                  title: Text('Home',
                      textAlign: TextAlign.left, style: appbarFontStyle),
                  onTap: () => null,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                alignment: Alignment.center,
                child: ListTile(
                  leading: const Icon(Icons.admin_panel_settings),
                  title: Text('Addmission',
                      textAlign: TextAlign.left, style: appbarFontStyle),
                  onTap: () => null,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                alignment: Alignment.center,
                child: ListTile(
                  leading: const Icon(Icons.payment),
                  title: Text('Billing and Payment',
                      textAlign: TextAlign.left, style: appbarFontStyle),
                  onTap: () => null,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                alignment: Alignment.center,
                child: ListTile(
                  leading: const Icon(Icons.report),
                  title: Text('Reporting',
                      textAlign: TextAlign.left, style: appbarFontStyle),
                  onTap: () => null,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                alignment: Alignment.center,
                child: ListTile(
                  leading: const Icon(Icons.monetization_on),
                  title: Text('Student\'s Fees',
                      textAlign: TextAlign.left, style: appbarFontStyle),
                  onTap: () => null,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
