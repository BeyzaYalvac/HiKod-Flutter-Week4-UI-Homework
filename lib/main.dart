import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Week4 - Homework',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTextVisible = false;

  void toggleTextVisibilityOpen() {
    setState(() {
      isTextVisible = true;
    });
  }

  void toggleTextVisibilityClose() {
    setState(() {
      isTextVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      appBar: AppBar(
        title: Text("UI App with Flutter"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),

              child: Text('Drawer Header',style: TextStyle(color: Colors.white,fontSize: 25),),

            ),
            ListTile(
              title: const Text("Item1"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Item2"),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Welcome to My App!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text("Widget 1"),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        toggleTextVisibilityOpen(); // OPEN Text Button'a basıldığında metni göster veya gizle.
                      },
                      child: Text("OPEN Text Button"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text("Widget 2"),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        toggleTextVisibilityClose(); // CLOSE Text Button'a basıldığında metni göster veya gizle.
                      },
                      child: Text("CLOSE Text Button"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (isTextVisible)
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                "You pressed the OPEN button, press the other button to undo",
                style: TextStyle(color: Colors.green),
              ),
            ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            child: const Text(
              "Açıklama",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            child: Text(
              "Bu benim ilk mobil uygulama ödevim",
              style: TextStyle(),
            ),
          ),

        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Dialog Title"),
                content: Text("This is a dialog box."),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Dialog'u kapat
                    },
                    child: Text("Close"),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      )
      ,
    );
  }
}
