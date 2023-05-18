import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text("Hello World"),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("search"),
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    onPressed:() {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.facebook_outlined,
                      color: Colors.black54,
                    ),
                    onPressed:() {},
                  ),
                ],
              ),
            ],
            backgroundColor: const Color.fromARGB(255, 243, 6, 25),
          ),
          body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage('image.jpg'),
                    height: 150,
                    width: 400.0,
                    alignment: Alignment.topLeft,
                  ),
                  const Image(
                    image: AssetImage('image1.png'),
                    height: 150,
                    width: 150.0,
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 142, 18, 225),
                    width: 150.0,
                    height: 150.0,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20.0),
                    // margin: const EdgeInsets.all(100.0),
                    child: const Text("Column: 1"),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 25, 197, 155),
                    width: 150.0,
                    height: 150.0,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20.0),
                    // margin: const EdgeInsets.all(100.0),
                    child: const Text("Column: 2"),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 222, 186, 12),
                    width: 150.0,
                    height: 150.0,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20.0),
                    // margin: const EdgeInsets.all(100.0),
                    child: const Text("Column: 3"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //
                    // const Image(image: AssetImage('images/course-08.png'),height: 150,width: 400.0,alignment: Alignment.topLeft,),
                    // const Image(image: AssetImage('images/image.png'),height: 300,width: 300.0,alignment: Alignment.topLeft,),
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          color: const Color.fromARGB(82, 7, 8, 17),
                          width: 150.0,
                          height: 100.0,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(20.0),
                          child: const Text("Column: 1"),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          color: const Color.fromARGB(82, 7, 8, 17),
                          width: 150.0,
                          height: 100.0,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(20.0),
                          // margin: const EdgeInsets.all(100.0),
                          child: const Text("Column: 2"),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          color: const Color.fromARGB(82, 7, 8, 17),
                          width: 150.0,
                          height: 100.0,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(20.0),
                          child: const Text("Column: 3"),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ));
  }
}
