import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          title: const Text('Login'),
          elevation: 1,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  "Let's login with your GoSuper account",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 15, right: 15),
                child: const TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',
                      contentPadding: EdgeInsets.all(10),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.email_outlined,
                          color: Colors.green,
                          size: 25,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                        ),
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      contentPadding: EdgeInsets.all(10),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.key_rounded,
                          color: Colors.green,
                          size: 25,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                        ),
                      )),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Not implemented yet!'),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    textStyle: const TextStyle(
                      fontSize: 16
                    ),
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10)
                  ),
                  child: const Text('Login'),
                )
              ),
              Container(
                margin: const EdgeInsets.only(top:30, left:15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){}, child: const Text('Register')),
                    TextButton(onPressed: (){}, child: const Text('Forgot Password?'))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
