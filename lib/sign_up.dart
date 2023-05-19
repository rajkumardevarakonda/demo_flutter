// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Create Account"),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: passText,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      // borderSide:
                      //     const BorderSide(color: Colors.green, width: 2),
                    ),
                  )),
              Container(
                height: 11,
              ),
              TextField(
                // keyboardType: TextInputType.phone,
                controller: emailText,
                decoration: InputDecoration(
                  hintText: 'email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: BorderSide(color: Colors.orange, width: 2)),
                  // enabledBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(11),
                  //     borderSide: BorderSide(
                  //         color: Color.fromARGB(255, 19, 19, 15), width: 2)),
                  // disabledBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(11),
                  //     borderSide:  BorderSide(
                  //         color: Color.fromARGB(255, 20, 227, 203), width: 2)),
                  // suffixText: 'username exits',

                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.orange,
                  ),
                ),
              ),
              Container(
                height: 11,
              ),
              TextField(
                controller: passText,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(11),
                  //    borderSide: BorderSide(
                  //        color: Colors.black, width: 2)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                height: 11,
              ),
              TextField(
                controller: passText,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),

                  // enabledBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(11),
                  //     borderSide: BorderSide(color: Colors.black, width: 2)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                height: 11,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // String uEmail = emailText.text.toString();
                    // String uPass = passText.text;
                  },
                  child: Text('sign up'))
            ],
          ),
        ),
      ),
    );
  }
}
