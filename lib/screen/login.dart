import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login"),
              ElevatedButton(
                onPressed: () {
                  context.router.replaceNamed('/home');
                },
                child: Text("Go to Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
