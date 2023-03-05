import 'package:flutter/material.dart';

import 'package:anxiety_go/components/Buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Welcome To', style: TextStyle(fontSize: 24)),
                const Text(
                  'AnxietyGo',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 17),
                Container(
                  constraints: const BoxConstraints(maxWidth: 245),
                  child: const Text(
                    'We’re here to help you challenge yourself and tackle your'
                    ' anxiety',
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 31),
                Row(
                  children: const [
                    Text('Email', style: TextStyle(fontSize: 20)),
                  ],
                ),
                const SizedBox(height: 7),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 12),
                Row(
                  children: const [
                    Text('Password', style: TextStyle(fontSize: 20)),
                  ],
                ),
                const SizedBox(height: 7),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  autocorrect: false,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                        ),
                        child: const Text(
                          'Continue with email',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 55),
                Row(
                  children: [
                    Expanded(
                      child: IconTextButton(
                        label: 'Continue with google',
                        iconPath: 'assets/icons/google.png',
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 19),
                Row(
                  children: [
                    Expanded(
                      child: IconTextButton(
                        label: 'Continue with apple',
                        iconPath: 'assets/icons/apple.png',
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
