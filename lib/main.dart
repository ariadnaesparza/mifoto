import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mifoto',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Mifoto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(110, 0, 0, 10),
          child: Text(
            'Mi Foto',
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.01, -0.87),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.deepPurple.shade200,
                        offset: Offset(0, 3),
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.deepPurple.shade400,
                      ],
                      stops: [
                        0,
                        1
                      ],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(13, 15, 0, 0),
                    child: Text(
                      'Ariadna Esparza Carrillo',
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.33),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://github.com/ariadnaesparza/imagenes_soriana/blob/main/dead.jpg?raw=true',
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.25,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.18, 0.14),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 10,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple,
                        Colors.deepPurple
                      ],
                      stops: [
                        0,
                        1
                      ],
                      begin: AlignmentDirectional(1, 0),
                      end: AlignmentDirectional(-1, 0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.06, -0.6),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 10,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple,
                        Colors.deepPurple
                      ],
                      stops: [
                        0,
                        1
                      ],
                      begin: AlignmentDirectional(1, 0),
                      end: AlignmentDirectional(-1, 0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.07, 0.28),
                child: Text(
                  '6J A  Programacion',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
