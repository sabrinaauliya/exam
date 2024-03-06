import 'package:flutter/material.dart';
import 'package:exam/dashboard.dart';
import 'package:exam/registration.dart';

void main(){
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  const SizedBox(height: 200,),
                  Center(
                    child: Text('Welcome back',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 5),
                  Transform.translate(
                    offset: const Offset(10.0, 10.0),
                    child: Image.asset(
                      'assets/login.png',
                      width: 300,
                      height: 250,),
                  ),
                  SizedBox(height: 20,),
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
                  SizedBox(height: 20,),
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
                  SizedBox(height: 40,),
                  Center(
                    child: Text('Forget password?',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 13, color: Colors.blue),),
                  ),
                  SizedBox(height: 80,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
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
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 18,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Registrasi()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Poppins', fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}