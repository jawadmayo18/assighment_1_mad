import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.pink],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(decoration: InputDecoration(labelText: 'Username')),
            TextField(decoration: InputDecoration(labelText: 'Email')),
            TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password')),
            TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Confirm Password')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
