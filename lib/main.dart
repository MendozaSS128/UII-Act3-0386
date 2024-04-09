import 'package:flutter/material.dart';

import 'package:mendozadrawer/cuadrado_v1.dart';
import 'package:mendozadrawer/cuadrado_v2.dart';
import 'package:mendozadrawer/cdegradado.dart';
import 'package:mendozadrawer/textov1.dart';
import 'package:mendozadrawer/aterrizaje.dart';
import 'package:mendozadrawer/textov2.dart';
import 'package:mendozadrawer/my_drawer_header.dart';
import 'package:mendozadrawer/circulo.dart';
import 'package:mendozadrawer/fondode.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//s9s9s9s  rrrrrrr

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = AterrizajePage();
    } else if (currentPage == DrawerSections.contacts) {
      container = const Texto1Page();
    } else if (currentPage == DrawerSections.events) {
      container = const Texto2Page();
    } else if (currentPage == DrawerSections.notes) {
      container = CirculooPage();
    } else if (currentPage == DrawerSections.settings) {
      container = DegradadoPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = FondoDegPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = CuadradosPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = Cuadrados2Page();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Text("Drawer Pages Mendoza Castrejon", textScaleFactor: 0.85),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Aterrizaje", Icons.flight_land,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Texto V1", Icons.feed,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Texto V2", Icons.text_fields,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Circulo", Icons.circle,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, "Caja degradado", Icons.check_box_outline_blank,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Fondo degradado", Icons.wallpaper,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(7, "Cuadrados V1", Icons.widgets,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "Cuadrados V2", Icons.crop_5_4,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
