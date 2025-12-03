import 'package:flutter/material.dart';
import 'package:flutter_assignment/modules/auth/accountcreated.dart';
import 'package:flutter_assignment/constants/app_text_styles.dart';
import 'package:flutter_assignment/modules/auth/signup.dart';
import 'package:flutter_assignment/modules/home/bottom_navigation.dart';
import 'package:flutter_assignment/widgets/drawer.dart'; // add this import
import '../../extra/homepage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Login Page',
          style: AppTextStyles.poppinsBold.copyWith(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 40,
            right: 40,
            bottom: 40,
          ),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/logo.png', width: 200),
                SizedBox(height: 10),
                Text(
                  'Welcome Back',
                  style: AppTextStyles.poppinsBold.copyWith(fontSize: 28),
                ),
                Text(
                  "Make it work, make is right, make it fast",
                  style: AppTextStyles.poppinsMedium.copyWith(fontSize: 16),
                ),

                SizedBox(height: 30),

                // Email
                TextFormField(
                  style: AppTextStyles.poppinsRegular.copyWith(fontSize: 14),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: AppTextStyles.poppinsRegular.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    prefixIcon: Icon(Icons.email, size: 26),
                  ),
                ),

                SizedBox(height: 14),

                // Passwords
                TextFormField(
                  style: AppTextStyles.poppinsRegular.copyWith(fontSize: 14),
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: AppTextStyles.poppinsRegular.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    prefixIcon: Icon(Icons.fingerprint, size: 26),
                    suffixIcon: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: AppTextStyles.poppinsMedium.copyWith(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Login button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: Size(double.infinity, 56),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavigation(),
                        ),
                        (route) => false,
                      );
                    }
                    ;
                  },
                  child: Text(
                    'LOGIN',
                    style: AppTextStyles.poppinsMedium.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "OR",
                    style: AppTextStyles.poppinsRegular.copyWith(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Google Sign-in
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(double.infinity, 60),
                    side: BorderSide(color: Colors.black, width: 1.5),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        width: 35,
                        height: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Sign in with Google',
                        style: AppTextStyles.poppinsMedium.copyWith(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                // Signup link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: AppTextStyles.poppinsRegular.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: AppTextStyles.poppinsMedium.copyWith(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ),
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
