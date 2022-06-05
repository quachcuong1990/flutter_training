import 'package:flutter/material.dart';
import 'package:practice_200lab/pages/downloading_page.dart';
import 'package:practice_200lab/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DownloadPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.red,
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.yellow,
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.blue,
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.white,
                                              )),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 3,
                                              child: Container(
                                                color: Colors.cyan,
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          color:
                                                              Colors.lightBlue,
                                                        )),
                                                    Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          color: Colors.green,
                                                        )),
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.black,
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.yellow,
                          )),
                      Expanded(flex: 2, child: Container()),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red.shade200,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(left: 10),
                  color: Colors.red.shade200,
                ),
              ),
            ],
          ),
          Positioned(
            top: 350,
            left: 50,
            child: Container(
                width: 300, height: 150, color: Colors.black.withOpacity(0.2)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
