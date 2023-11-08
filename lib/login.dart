import 'package:flutter/material.dart';
import 'package:inhacks_2023/home.dart';
import 'package:inhacks_2023/register.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';
import 'package:inhacks_2023/widgets/plain_button.dart';
import 'widgets/auth_input.dart';
import 'widgets/properties.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/login.png'),
              const AuthInput(
                placeholderText: 'Enter your email',
                isPassword: false,
              ),
              const AuthInput(
                placeholderText: 'Password',
                isPassword: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AuthCheckbox(),
                  PlainButton(
                    'Lupa Password?',
                    size: 11,
                    fontWeight: FontWeight.w600,
                    callback: () {},
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const OtherAuth(),
              const SizedBox(height: 24),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OpaqueButton(
                    'Login >',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    padX: screenSize.width * 0.25,
                    padY: 16,
                    callback: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Belum punya akun? ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      PlainButton(
                        'Daftar sekarang!',
                        size: 13,
                        fontWeight: FontWeight.w700,
                        callback: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtherAuth extends StatelessWidget {
  const OtherAuth({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: screenSize.width * 0.225,
              margin: const EdgeInsets.only(right: 16),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color.fromRGBO(235, 235, 235, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            const Text('Or Continue With'),
            Container(
              width: screenSize.width * 0.225,
              margin: const EdgeInsets.only(left: 16),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color.fromRGBO(235, 235, 235, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        TextButton(
          onPressed: () {},
          style: const ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.zero),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Image.asset('assets/icons/google.png'),
        ),
      ],
    );
  }
}

// This one needs to be refactored.
// Since this is a prototype, I'll just let it be.
class AuthCheckbox extends StatefulWidget {
  const AuthCheckbox({super.key});

  @override
  AuthCheckboxState createState() => AuthCheckboxState();
}

class AuthCheckboxState extends State<AuthCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
          activeColor: AppColors.primary,
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        const Text(
          'Ingat saya',
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
