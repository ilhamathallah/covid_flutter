import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscured = true; // Untuk menyimpan status visibilitas password

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),

            // Form email ID
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email ID',
                  labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),

            // Form password
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                enableSuggestions: false,
                autocorrect: false,
                obscureText: isObscured, // Gunakan status ini
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isObscured ? Icons.visibility : Icons.visibility_off, // Ikon untuk toggle
                    ),
                    onPressed: () {
                      setState(() {
                        isObscured = !isObscured; // Toggle status visibilitas
                      });
                    },
                  ),
                ),
              ),
            ),

            // Tombol login
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Logika untuk login
                  String email = emailController.text;
                  String password = passwordController.text;

                  print('Email: $email');
                  print('Password: $password');
                },
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
