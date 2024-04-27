import 'package:flutter/material.dart';
import 'package:melston/Screens/ForgetPage.dart';
import 'package:melston/Screens/SignupPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Login",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset('assets/logo.png', height: 160),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _header(context),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                _inputField(context),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPage()));
                        }, 
                        child: Text(
                          "Forget Password?", 
                          style: TextStyle(fontSize: 16, color: Colors.red),
                          )
                        )
                      ],
                    ),
                  ]
                ),
                const SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 200),
                        backgroundColor: Colors.red,
                      ),
                      child: const Text(
                        "Log in",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _signup(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome Back!",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900, color: Colors.red),
        ),
        const SizedBox(height: 10),
        Text(
          "Enter Your Details",
          style: TextStyle(fontSize: 25),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const TextField(
          decoration: InputDecoration(
              hintText: "Email Address",
              suffixIcon: Icon(Icons.email)),
        ),
        const SizedBox(height: 25),
        const TextField(
          decoration: InputDecoration(
            hintText: "Password",
            suffixIcon: Icon(Icons.visibility_off),
          ),
          obscureText: true,
        )
      ],
    );
  }

  _signup(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.5),
          child: Row(
            children: [
              Expanded(child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding:const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Or Continue with", 
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)
                ),
              ),
              Expanded(child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
            ]
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
              },
              child:Image.asset('assets/fb.png', height: 35),
            ),
            Padding(
                padding:const EdgeInsets.symmetric(horizontal: 10.0),
            ),
            InkWell(
              onTap: (){
              },
              child:Image.asset('assets/google.png', height: 35),
            ),
            Padding(
                padding:const EdgeInsets.symmetric(horizontal: 10.0),
            ),
            InkWell(
              onTap: (){
              },
              child:Image.asset('assets/apple.png', height: 35),
            ),
          ],
        ),
        const SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account?",
              style: TextStyle(fontSize: 18)
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                },
                child: const Text("Sign Up", style: TextStyle(fontSize: 18, color: Colors.red))
            )
          ]
        ),
      ],
    );
  }
}