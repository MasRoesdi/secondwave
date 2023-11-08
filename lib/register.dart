import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inhacks_2023/widgets/auth_input.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';
import 'package:inhacks_2023/widgets/plain_button.dart';
import 'package:inhacks_2023/widgets/properties.dart';

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
                style: GoogleFonts.poppins(
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
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OpaqueButton(
                    'Register >',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    padX: screenSize.width * 0.25,
                    padY: 16,
                    callback: () {},
                  ),
                  const SizedBox(height: 12),
                  const AuthCheckbox(),
                ],
              ),
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
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
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
        Expanded(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 0,
            spacing: 0,
            children: [
              const Text(
                'Saya menyetujui ',
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
              PlainButton(
                'syarat dan ketentuan',
                size: 11,
                fontWeight: FontWeight.w400,
                callback: () {},
              ),
              const Text(
                ' aplikasi ini.',
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
