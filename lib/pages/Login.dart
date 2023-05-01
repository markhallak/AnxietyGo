import 'package:anxiety_go/components/Buttons.dart';
import 'package:anxiety_go/pages/SignUp.dart';
import 'package:flutter/material.dart';

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
                const Text('Welcome To',
                    style: TextStyle(
                        fontFamily: 'Figtree-SemiBold', fontSize: 20)),
                const Text(
                  'MindStep',
                  style:
                      TextStyle(fontFamily: 'Figtree-SemiBold', fontSize: 40),
                ),
                const SizedBox(height: 17),
                Container(
                  constraints: const BoxConstraints(maxWidth: 245),
                  child: const Text(
                    'We’re here to help you challenge yourself and get you out'
                    ' the comfort-zone',
                    style:
                        TextStyle(fontFamily: 'Figtree-SemiBold', fontSize: 20),
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
                const SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    )),
                const SizedBox(height: 12),
                Row(
                  children: const [
                    Text('Password', style: TextStyle(fontSize: 20)),
                  ],
                ),
                const SizedBox(height: 7),
                const SizedBox(
                    height: 50,
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        autocorrect: false,
                        style: TextStyle(fontSize: 20.0, color: Colors.black))),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            backgroundColor: Color(0xff5152A7)),
                        child: Text(
                          'Continue with email',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Divider(
                  thickness: 1,
                  color: Colors.black12,
                ),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
