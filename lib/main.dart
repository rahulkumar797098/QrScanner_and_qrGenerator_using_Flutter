import 'package:flutter/material.dart';
import 'package:qr_scanner_qt_reader/qr_generator.dart';
import 'package:qr_scanner_qt_reader/qr_scnner.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'QR SCANNER AND GENERATOR' ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.tealAccent.shade100,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Card(
                  elevation: 30,
                    shadowColor: Colors.deepPurple,
                    ///// Scanner Button
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: FloatingActionButton(onPressed: (){
                            setState(() {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => QrScanner())) ;
                            });
                          } , child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/qr-scan.png"),
                          ),
                            backgroundColor: Colors.limeAccent.shade100,
                          ),
                        ),
                        Text("QR Scanner" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600))
                      ],
                    )
                ) ,
            
                SizedBox(
                  height: 30,
                ) ,
                Card(
                  elevation: 20,
                    shadowColor: Colors.deepPurple,
                    // Generator Button
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: FloatingActionButton(onPressed: (){
                            
                            setState(() {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => QrGenerator())) ;
                            });
                            
                          }, child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/qr-code.png"),
                          ),
                          ),
                        ),
                        Text("QR Generator" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),)
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
