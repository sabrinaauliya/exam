import 'package:flutter/material.dart';
import 'package:exam/login.dart';
import 'package:exam/dashboard.dart';

void main(){
  runApp(const Registrasi ());
}

class Registrasi extends StatefulWidget {
  const Registrasi({super.key});

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  bool hidepass = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF0F4F3),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: -20,
                left: -100,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(143, 225, 215, 0.5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: -100,
                left: -20,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(143, 225, 215, 0.5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height:200),
              Text(
                'Welcome to Onboard! ',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              
              Text(
                "Let’s help to meet up your tasks.",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 100),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Your Full Name',
                  contentPadding: EdgeInsets.all(5),
                  hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.w400)
                ),
                ),
              ),
          
              SizedBox(height: 30),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Your Email',
                  contentPadding: EdgeInsets.all(10),
                  hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.w400)
                ),
                ),
              ),
          
              SizedBox(height: 30),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Password',
                  contentPadding: EdgeInsets.all(10),
                  hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.w400)
                ),
                ),
              ),
          
              SizedBox(height: 30),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Confirm Password',
                  contentPadding: EdgeInsets.all(10),
                  hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.w400)
                ),
                ),
              ),
          
              const SizedBox(
                  height: 120),
               ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(85, 15, 80, 18),
                  backgroundColor: Color(0xFF50C2C9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: Size(380, 60),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Dashboard()),
                    );
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 18,
                     fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already have an account ? ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}