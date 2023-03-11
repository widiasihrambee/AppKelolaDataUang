import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:apptugasmagang/screens/create_screen.dart';
import 'package:apptugasmagang/screens/update_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kelola Data Uang",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Kelola Uang"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CreateScreen()));
            },
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Text("Total Saldo : Rp. 1.700.000"),
          SizedBox(
            height: 20,
          ),
          Text("Sisa Saldo : Rp. 1.300.000"),
          ListTile(
              title: Text("Transfer dari Kakak"),
              subtitle: Text("Rp.200.000   01/02/2023"),
              leading: Icon(
                Icons.download,
                color: Colors.green,
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UpdateScreen()));
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )),
              ListTile(
              title: Text("Makan Pizza"),
              subtitle: Text("Rp.200.000   01/02/2023"),
              leading: Icon(
                Icons.upload,
                color: Colors.red,
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UpdateScreen()));
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )),
          ListTile(
              title: Text("Transfer dari Mamak"),
              subtitle: Text("Rp.1.000.000   01/01/2023"),
              leading: Icon(
                Icons.download,
                color: Colors.green,
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UpdateScreen()));
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )),
              ListTile(
              title: Text("Baju Kemeja Putih"),
              subtitle: Text("Rp.100.000   01/01/2023"),
              leading: Icon(
                Icons.upload,
                color: Colors.red,
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UpdateScreen()));
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )),
          ListTile(
              title: Text("Transfer dari Mamak"),
              subtitle: Text("Rp.500.000   23/12/2022"),
              leading: Icon(
                Icons.download,
                color: Colors.green,
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UpdateScreen()));
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )),
              ListTile(
              title: Text("Pelengkapan Mandi"),
              subtitle: Text("Rp.100.000   23/12/2022"),
              leading: Icon(
                Icons.upload,
                color: Colors.red,
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UpdateScreen()));
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )),
        ],
      )),
    );
  }
}
