import 'package:bfcai/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 32),
          child: SingleChildScrollView(
            child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: Theme.of(context).textTheme.displayLarge
                      ),
                      const SizedBox(
                        height: 29
                      ),
                      Image.asset('assets/images/login.png'),
                      const SizedBox(
                        height: 24
                      ),
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'email',
                            prefixIcon: Padding(
                            padding: const EdgeInsets.all(17),
                            child: Image.asset('assets/images/email.png')
                          )
                          ),
                          ),
                      const SizedBox(
                        height: 16
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'password',
                          prefixIcon:  Padding(
                            padding: const EdgeInsets.all(17),
                            child: Image.asset(
                              'assets/images/locker.png'
                            ))
                        ),
                        obscureText: true,
                      
                      ),
                      const SizedBox(
                        height: 16
                      ),
                      ElevatedButton(
                              onPressed: () {},child: const Text('Login'),),
                      const SizedBox(
                        height: 24
                      ),
                      InkWell(
                        // ignore: prefer_const_constructors
                        onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SignUpScreen())),
                        child: Text(
                         'create new account',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  fontSize: 16, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                )
          ),
        ),
      ),
    );
  }
}