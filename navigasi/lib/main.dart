import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: "Login Page",
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Login Page"),
      // ),
      body: HomePage(),
      // SingleChildScrollView(
      //   child: Column(
      //     children: <Widget>[
      //       Padding(
      //         padding: const EdgeInsets.only(top: 60.0, bottom: 30.0),
      //         child: Center(
      //           child: Container(
      //             width: 150,
      //             height: 150,
      //             child: Image.asset("images/pm.png"),
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 15),
      //         child: TextField(
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(),
      //               labelText: 'Email',
      //               hintText: 'Masukkan Email yang benar abc@gmail.com'),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(
      //             left: 15.0, right: 15.0, top: 15, bottom: 0),
      //         //padding: EdgeInsets.symmetric(horizontal: 15),
      //         child: TextField(
      //           obscureText: true,
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(),
      //               labelText: 'Password',
      //               hintText: 'Masukkan password'),
      //         ),
      //       ),
      //       TextButton(
      //         onPressed: () {
      //           //TODO FORGOT PASSWORD SCREEN GOES HERE
      //         },
      //         child: Text(
      //           'Lupa Password',
      //           style: TextStyle(color: Colors.blue, fontSize: 15),
      //         ),
      //       ),
      //       Container(
      //         height: 50,
      //         width: 250,
      //         decoration: BoxDecoration(
      //             color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      //         child: TextButton(
      //           onPressed: () {
      //             Navigator.push(
      //                 context, MaterialPageRoute(builder: (_) => HomePage()));
      //           },
      //           child: Text(
      //             'Login',
      //             style: TextStyle(color: Colors.white, fontSize: 25),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 130,
      //       ),
      //       Text('User Baru ? Buat Akun')
      //     ],
      //   ),
      // ),
    );
  }
}
