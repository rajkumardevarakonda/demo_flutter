import 'package:flutter/material.dart';
import 'package:test_1/sign_up.dart';

import 'main.dart';

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
      home: const MyLogin(),
    );
  }
}

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  var _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Login_Page"),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                // keyboardType: TextInputType.phone,
                controller: emailText,
                decoration: InputDecoration(
                  hintText: 'email',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(31),
                      borderSide: BorderSide(color: Colors.orange, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 19, 19, 15), width: 2)),
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
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                textCapitalization: TextCapitalization.none,
                validator: (value){
                  if (value == null ||
                       value.trim().isEmpty ||
                       !value.contains('@')){
                    return 'please enter a valid email address.';
                  }
                  return null;
                }
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
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(31),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
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

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyWidget()));
                  },
                  child:  Text(_isLogin ? 'Login' : 'Signup'),
              ),
              Container(
                height: 11,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isLogin = !_isLogin;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                  child: Text(_isLogin ? 'Create an account' : 'I already have an account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
