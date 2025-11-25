import 'package:flutter/material.dart';
import 'package:flutter_assignment/app_text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 40,
            right: 40,
            bottom: 40,
          ),
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
              TextFormField(
                style: AppTextStyles.poppinsRegular.copyWith(fontSize: 14),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
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
                  prefixIcon: Icon(Icons.person, size: 26),
                ),
              ),

              SizedBox(height: 14),

              TextFormField(
                style: AppTextStyles.poppinsRegular.copyWith(fontSize: 14),
                controller: passwordController,
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
                  'Login'.toUpperCase(),
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
                  "Or".toUpperCase(),
                  style: AppTextStyles.poppinsRegular.copyWith(
                    fontSize: 18,
                    color: Colors.black,
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
                  children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
