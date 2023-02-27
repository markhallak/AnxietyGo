import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('No account yet? '),
        TextButton(
          onPressed: () {
            print('Navigate to create account page');
          },
          child: const Text('Create an account'),
        ),
      ],
    );
  }
}
