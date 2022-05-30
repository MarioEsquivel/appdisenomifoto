import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want

      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA61A1D),
        automaticallyImplyLeading: false,
        title: Text(
          'Agregando bordes app Esquivel',
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0, -0.05),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 40, 50, 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.red,
                          Color(0xFF791010)
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
                      padding: EdgeInsetsDirectional.fromSTEB(15, 40, 20, 10),
                      child: Text(
                        'Mario Esquivel',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Color(0xFFE87373),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Image.network(
                      'https://raw.githubusercontent.com/MarioEsquivel/imagenes_UIII/main/0bc0895c-6b8d-4382-87a8-680f58b24fb2.jpg',
                      width: 40,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Color(0xFFE87373),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Text(
                    '6I Programacion',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
