import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            const SizedBox(
              height: 80.0,
            ),
            Column(
              children: [
                Image.asset("assets/images/daimonds.jpg"),
                const SizedBox(
                  height: 16.0,
                ),
                const Text('SHRINE'),
              ],
            ),
            const SizedBox(
              height: 120.0,
            ),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                filled: true,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                filled: true,
              ),
              obscureText: true,
            ),
            OverflowBar(
              spacing: 5.0,
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                    },
                    child: const Text('CANCEL')),
                ElevatedButton(
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                      // Navigator.pop(context);
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text('NEXT')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
