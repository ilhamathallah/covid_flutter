import 'package:covid_flutter/ui/home_screen.dart';
import 'package:covid_flutter/ui/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isObscured = true;
  var isSignedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [

            // teks sign up
            Text(
              'Sign up',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // email
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  // first & last
                  Row(
                    children: <Widget>[

                      // firstname
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: firstNameController,
                          decoration: InputDecoration(
                            labelText: 'First Name',
                            labelStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 10),

                      // lastname
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: lastNameController,
                          decoration: InputDecoration(
                            labelText: 'Last Name',
                            labelStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  // password
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    obscureText: isObscured,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isObscured
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                        onPressed: () {
                          setState(() {
                            isObscured = !isObscured; // Toggle status visibilitas
                          });
                        },
                      )
                    ),
                  ),

                  SizedBox(height: 10),

                  // confirm
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                      ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscured
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscured = !isObscured; // Toggle status visibilitas
                            });
                          },
                        )
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 20),

            // Tombol Continue
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
                          MaterialPageRoute(builder: (context) => LoginScreen()),
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
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15),

            // bottom teks
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Joined us before?',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.grey.shade500),
                ),
                TextButton(onPressed: () {
                  Navigator.pushNamed(context, '/login');
                }, child: Text('Login', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.blue),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
