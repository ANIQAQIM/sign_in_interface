import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Login Page'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Center(
                      child: SizedBox(
                    width: 200,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                        image: const DecorationImage(
                          image: AssetImage('asset/images/giphy.gif'),
                        ),
                      ),
                    ),
                  ))),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const HomePage()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Or Sign In Using'),
              const SizedBox(height: 10),
              SocialLoginButton(
                borderRadius: 10,
                width: 300,
                buttonType: SocialLoginButtonType.google,
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              SocialLoginButton(
                borderRadius: 10,
                width: 300,
                buttonType: SocialLoginButtonType.appleBlack,
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              SocialLoginButton(
                borderRadius: 10,
                width: 300,
                buttonType: SocialLoginButtonType.facebook,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('New User? Create Account'),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ));
  }
}
