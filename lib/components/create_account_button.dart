import 'package:flutter/material.dart';

import 'package:anxiety_go/pages/createAccountPage.dart';

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
          onPressed: () => Navigator.push<MaterialPageRoute>(
            context,
            MaterialPageRoute(
              builder: (_) => const CreateAccountPage(),
            ),
          ),
          child: const Text('Create an account'),
        ),
      ],
    );
  }
}
