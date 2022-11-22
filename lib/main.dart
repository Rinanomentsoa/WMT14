import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top : 160)),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 5, 30, 10),
                  alignment: Alignment.centerLeft,
                  child : const Text('Smart \nInsurance \nhere!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 56,)),),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 5, 30, 10),
                  alignment: Alignment.centerLeft,
                  child : const Text('Find all you need faster \nthan ever ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold, fontSize: 20,)),),
                Padding(padding: EdgeInsets.only(bottom: 50)),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 5, 30, 10),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child : SizedBox(
                          height: 45,
                          width: 225,
                          child:
                          ElevatedButton(
                            child: Text(
                              'New Account',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                              ) ,),
                            onPressed: (){},
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide(color: Colors.blue)
                                  )
                              ),
                            ),
                          ),),),
                      Padding(padding: EdgeInsets.only(bottom: 22)),
                      Container(
                        alignment: Alignment.centerLeft,
                        child : SizedBox(
                          height: 45,
                          width: 145,
                          child : ElevatedButton(
                            child: Text(
                              'Sign in',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                              ) ,),
                            onPressed: (){},
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide(color: Colors.white)
                                  )
                              ),
                            ),
                          ),),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


