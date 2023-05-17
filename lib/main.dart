import 'package:flutter/material.dart';

void main() {
  runApp( const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text("Hello World   "),
            ),
            backgroundColor:  const Color.fromARGB(255, 243, 6, 25),
          ),

          body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage('images/course-08.png')),
                  Image(image: AssetImage('images/image.png')),
                  Container(
                    color: const Color.fromARGB(255, 6, 26, 217),
                    width: 200.0,
                    height: 200.0,
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(50.0),
                    // margin: const EdgeInsets.all(100.0),
                    child: const Text("Column: 1"),
                  ),

                  Container(
                    color: const Color.fromARGB(255, 25, 197, 155),
                    width: 200.0,
                    height: 200.0,
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(50.0),
                    // margin: const EdgeInsets.all(100.0),
                    child: const Text("Column: 2"),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 200.0,
                    height: 200.0,
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(50.0),
                    // margin: const EdgeInsets.all(100.0),
                    child: const Text("Column: 3"),
                  ),

                ]
            ),
          ),
        )
    );
  }
}