import 'package:flutter/material.dart';
import 'package:inhacks_2023/login.dart';
import 'package:inhacks_2023/widgets/auth_input.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';
import 'package:inhacks_2023/widgets/plain_button.dart';
import 'package:inhacks_2023/widgets/properties.dart';

import 'app_scaffold.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              Text(
                'Registrasi',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),
              const AuthInput(
                placeholderText: 'Name',
                isPassword: false,
              ),
              const AuthInput(
                placeholderText: 'Phone Number / Email',
                isPassword: false,
              ),
              const AuthInput(
                placeholderText: 'Password',
                isPassword: false,
              ),
              const AuthInput(
                placeholderText: 'Re-enter Password',
                isPassword: false,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: OpaqueButton(
                      'Register >',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      padX: screenSize.width * 0.25,
                      padY: 16,
                      callback: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AppScaffold(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const AuthCheckbox(),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sudah punya akun? Masuk ',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  PlainButton(
                    'di sini',
                    size: 14,
                    fontWeight: FontWeight.w600,
                    callback: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
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
    // This thing overflows
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Checkbox(
                activeColor: AppColors.primary,
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              const Text(
                'Saya menyetujui ',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              PlainButton(
                'syarat dan ketentuan',
                size: 14,
                fontWeight: FontWeight.w400,
                callback: () {},
              ),
              const Text(
                ' aplikasi ini.',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
