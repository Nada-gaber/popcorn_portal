import 'package:flutter/material.dart';
import 'package:popcorn_portal/core/widgets/textfield_decoration.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          children: [
            const Text('Login'),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
                textEditingController: userName,
                hintText: "Enter Your Name",
                icon: Icons.person),
            MaterialButton(
              onPressed: () {},
              color: Colors.red,
              child: Text('login'),
            )
          ],
        ),
      ),
    );
  }
}
