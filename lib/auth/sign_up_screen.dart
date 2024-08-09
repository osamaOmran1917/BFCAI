import 'package:bfcai/auth/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: SingleChildScrollView(
                  child:
                   Form(
                      child: Column(children: [
                        const SizedBox(width: double.infinity, height: 30),
                            Text('Create New Account',
                                style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 30)),
                            const SizedBox(height: 9),
                            Image.asset('assets/images/signup.png'),
                            const SizedBox(height: 9),
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'full name',
                                prefixIcon: Icon(Icons.account_box)
                              )),
                            const SizedBox(height: 16),
                            TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                hintText: 'email',
                                prefixIcon: Icon(Icons.mail)
                              )),
                            const SizedBox(height: 16),
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'password',
                                prefixIcon: Icon(Icons.lock)
                              ),
                                obscureText: true
                                ),
                            const SizedBox(height: 16),
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'confirm password',
                                prefixIcon: Icon(Icons.lock)
                              ),
                                obscureText: true,
                                ),
                           const SizedBox(height: 16),
                            
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('Create an account')),
                            
                            const SizedBox(height: 20),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                      'Already have an account?',
                                      ),
                                  TextButton(
                                      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const LoginScreen())),
                                      child: Text(
                                          'login',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(
                                                  fontSize: 16,
                                                  color: Colors.blue)))
                                ])
                          ]))))));}}