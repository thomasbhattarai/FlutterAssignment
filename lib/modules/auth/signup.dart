import 'package:flutter/material.dart';
import 'package:flutter_assignment/constants/app_text_styles.dart';
import 'accountcreated.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String name = "";
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Signup Page',
          style: AppTextStyles.poppinsBold.copyWith(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.white,
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
                Text(
                  'Get on Board $name!',
                  style: AppTextStyles.poppinsBold.copyWith(fontSize: 28),
                ),

                Text(
                  "Create your profile to start your journey",
                  style: AppTextStyles.poppinsMedium.copyWith(fontSize: 16),
                ),
                SizedBox(height: 30),

                TextFormField(
                  style: AppTextStyles.poppinsRegular.copyWith(fontSize: 14),
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Full Name';
                    } else if (RegExp(r'[0-9]').hasMatch(value)) {
                      // Check if name contains any digits
                      return 'Please enter a valid name';
                    }
                    return null;
                  },

                  decoration: InputDecoration(
                    hintText: 'Full Name',
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
                    prefixIcon: Icon(Icons.person, size: 26),
                  ),
                  onChanged: (value) {
                    setState(() => name = value);
                  },
                ),

                SizedBox(height: 14),

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

                // Email
                TextFormField(
                  style: AppTextStyles.poppinsRegular.copyWith(fontSize: 14),
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Phone Number';
                    } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                      // Check if value contains only digits
                      return 'Please enter a valid phone number (digits only)';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
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
                    prefixIcon: Icon(Icons.phone, size: 26),
                  ),
                ),
                SizedBox(height: 14),

                // Password
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
                SizedBox(height: 20),

                // Signin button
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
                      print('Email: ${emailController.text}');
                      print('Password: ${passwordController.text}');
                      print('Full Name: ${nameController.text}');
                      print('Phone Number: ${phoneController.text}');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AccountCreatedScreen(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    'Signup',
                    style: AppTextStyles.poppinsMedium.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Divider(thickness: 1)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "OR",
                        style: AppTextStyles.poppinsMedium.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(thickness: 1)),
                  ],
                ),

                SizedBox(height: 20),

                // Signin button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: Size(double.infinity, 56),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Connect With Phone Number',
                    style: AppTextStyles.poppinsRegular.copyWith(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
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
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Login',
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
