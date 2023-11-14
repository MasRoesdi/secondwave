import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';
import 'package:inhacks_2023/widgets/profile_button.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary,
        title: const Text(
          'Akun Saya',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/person-5.jpg'),
            ),
            const SizedBox(height: 12),
            const Text('Humble Yos'),
            const Text('humbleyos0@gmail.com'),
            const SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.screen),
              child: Column(
                children: const [
                  ProfileButton('assets/icons/profile_edit.png', 'Edit Akun'),
                  ProfileButton(
                    'assets/icons/privacy_security.png',
                    'Privasi & Keamanan',
                  ),
                  ProfileButton(
                      'assets/icons/change_password.png', 'Ganti Password'),
                  ProfileButton('assets/icons/information.png', 'Informasi'),
                ],
              ),
            ),
            const SizedBox(height: 12),
            OpaqueButton(
              'Keluar',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              padX: 64,
              padY: 16,
              callback: () {},
            )
          ],
        ),
      ),
    );
  }
}
