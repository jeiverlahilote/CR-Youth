import 'package:flutter/material.dart';
import 'package:melston/Screens/LoginPage.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Sign up",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        }, 
                        icon: Icon(Icons.arrow_back, size: 40) 
                        )
                      ],
                    ),
                  ]
                ),
                Row(
                  children: [ Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 30.0),
                        const Text(
                          "Welcome!",
                          style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          ),
                        ),
                        const SizedBox(
                        height: 10,
                        ),
                        Text(
                        "Enter Your Details",
                        style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                        )
                      ],
                    ),
                  ]
                ),
                const SizedBox(height: 15.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Username",
                          suffixIcon: const Icon(Icons.person)),
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                          hintText: "Email Address",
                          suffixIcon: const Icon(Icons.email)),
                    ),

                    const SizedBox(height: 20),
                    
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Country",
                        suffixIcon: const Icon(Icons.public),
                      ),
                      obscureText: true,
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                        hintText: "Date of Birth",
                        suffixIcon: const Icon(Icons.calendar_month),
                      ),
                      obscureText: true,
                    ),

                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Phone",
                        suffixIcon: const Icon(Icons.phone),
                      ),
                      obscureText: true,
                    ),

                    const SizedBox(height: 20),
                    
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: const Icon(Icons.visibility_off),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: (){
                      }, 
                      child: Text(
                        "Terms and conditions", 
                        style: TextStyle(fontSize: 16, color: Colors.red),
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 15),
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
                        "Sign Up",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                _login(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _login(context) {
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)
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
              "Already have an account?",
              style: TextStyle(fontSize: 18)
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                child: const Text("Login", style: TextStyle(fontSize: 18, color: Colors.red))
            )
          ]
        ),
      ],
    );
  }
}