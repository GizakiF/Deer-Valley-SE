import 'package:deer_valley_teahouse/features/authentication/screens/sign_up_screen.dart';
import 'package:deer_valley_teahouse/features/menu/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A2C32),
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/login-top-image.png'),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: 30),
            child: Column(
              children: [
                Text(
                  'Login to Continue',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),

                SizedBox(height: 30),

                //
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.white),
                    border: OutlineInputBorder(),
                    label: Text(
                      'Enter your Email',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(height: 30),

                //
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text(
                      'Enter your Password',
                      style: TextStyle(color: Colors.white),
                    ),
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                //Checkbox
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Moves items apart
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (bool? value) {
                            setState(() {
                              _rememberMe = value!;
                            });
                          },
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {}, // Add forgot password functionality
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Color(0xFFF6650A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                //login button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ),
                      );
                    },
                    child: Text('Login', style: TextStyle(color: Colors.white)),
                  ),
                ),

                SizedBox(height: 20),

                //sign up button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xFFF6650A),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpScreen();
                            },
                          ),
                        );
                      },
                      child: Text('Sign up'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
