import 'package:covid_flutter/ui/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key,});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? emailId;
  String? password;

  @override
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscured = true; // Untuk menyimpan status visibilitas password

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // teks login
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
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade600),
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
                obscureText: isObscured,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade600),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isObscured
                          ? Icons.visibility
                          : Icons.visibility_off, // Ikon untuk toggle
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

            // tombol forgot password
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),

            // Tombol login
            Padding(
              padding: EdgeInsets.all(5.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (emailController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Email cannot be empty'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else {
                        var isSignedIn = true;
                      }
                      if (passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Password cannot be empty'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else {
                        var isSignedIn = true;
                      }
                      if (emailController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                              (Route<dynamic> route) => false,
                        );
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1E90FF), // Mengatur warna tombol
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15.0), // Mengatur border radius
                    ),
                    minimumSize: Size(
                        100, 50), // Mengatur ukuran tombol (lebar x tinggi)
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),

            // teks ---- or ----
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2, // Ketebalan garis
                      color: Colors.grey.shade300, // Warna garis
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'OR',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2, // Ketebalan garis
                      color: Colors.grey.shade300, // Warna garis
                    ),
                  ),
                ],
              ),
            ),

            // teks login google
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: Size(350, 50),
                ),
                child: Text(
                  'Login with Google',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )),

            SizedBox(height: 15),

            // bottom teks
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New to logistic?',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.grey.shade500),
                ),
                TextButton(onPressed: () {
                  Navigator.pushNamed(context, '/register');
                }, child: Text('Register', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.blue),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
